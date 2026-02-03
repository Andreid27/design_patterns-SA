import 'dart:convert';
import 'package:dart_openai/dart_openai.dart';
import 'package:dio/dio.dart';
import '../config/env.dart';
import 'api_service.dart';

class AiAgentService {
  final ApiService _apiService;
  final List<OpenAIChatCompletionChoiceMessageModel> _messages = [];

  AiAgentService(this._apiService) {
    OpenAI.apiKey = Environment.openAiApiKey;
  }

  // System Prompt
  final _systemMessage = OpenAIChatCompletionChoiceMessageModel(
    role: OpenAIChatMessageRole.system,
    content: [
      OpenAIChatCompletionChoiceMessageContentItemModel.text(
        """
You are a Book Seller Agent.
Your goal is to assist customers in finding books, checking prices, and managing orders.

You have access to the library's inventory and order system via the API.
- Use `getBooks` to list available books.
- Use `getOrders` to check order status for users.
- Use `getBookDetails` to get details about a specific book by ID.

If a user asks for book recommendations, query the books API and suggest titles based on their preferences (genre, author, etc.).
Always check the API for the most up-to-date information on availability and price.
"""
      ),
    ],
  );

  Future<Stream<OpenAIStreamChatCompletionModel>> sendMessage(String content) async {
    // 1. Add user message
    _messages.add(OpenAIChatCompletionChoiceMessageModel(
      role: OpenAIChatMessageRole.user,
      content: [
        OpenAIChatCompletionChoiceMessageContentItemModel.text(content),
      ],
    ));

    // 2. Define Tools
    final tools = [
      OpenAIToolModel(
          type: "function",
          function: OpenAIFunctionModel.withParameters(
            name: "getBooks",
            description: "Get a list of all available books in the library",
            parameters: [
               OpenAIFunctionProperty.string(
                name: "query",
                description: "Optional search query",
                isRequired: false,
              ),
            ],
          )),
      OpenAIToolModel(
          type: "function",
          function: OpenAIFunctionModel.withParameters(
            name: "getOrders",
            description: "Get a list of orders for the current user",
            parameters: [],
          )),
      OpenAIToolModel(
          type: "function",
          function: OpenAIFunctionModel.withParameters(
            name: "getBookDetails",
            description: "Get details for a specific book by ID",
            parameters: [
              OpenAIFunctionProperty.integer(
                name: "id",
                description: "The ID of the book",
                isRequired: true,
              ),
            ],
          )),
    ];

    try {
      // 3. Initial Stream Request
      final stream = OpenAI.instance.chat.createStream(
        model: "gpt-4o-mini",
        messages: [_systemMessage, ..._messages],
        tools: tools,
      );

      return stream;

    } catch (e) {
      throw Exception('Failed to communicate with AI: $e');
    }
  }

  // Handle Tool Calls (Simplified for now, assumes single tool call in stream - complex handling would need full buffering)
  // For a robust implementation with streaming tool calls, we often need to buffer the stream until a full tool call is assembled.
  // Given the complexity of streaming tool calls in Flutter, we might switch to non-streaming for the tool-use part or implement a buffer.
  
  // Strategy:
  // Since streaming tool calls + execution + recursive calling is complex to get right in one go:
  // I will implement a simpler `sendMessageAndExecuteTools` that handles the turn non-streaming for the tool part, 
  // or buffers the stream. 
  
  // Let's implement a non-streaming version first for reliability, as requested by "Do I do something in Flutter directly".
  // Streaming tool calls requires careful state management.
  
  Future<String> sendMessageAndHandleTools(String content) async {
    if (_messages.isEmpty) {
        // Add system message if not present (implicit in stream call usually, but good to have in history if we persist)
    }

    _messages.add(OpenAIChatCompletionChoiceMessageModel(
      role: OpenAIChatMessageRole.user,
      content: [
        OpenAIChatCompletionChoiceMessageContentItemModel.text(content),
      ],
    ));

      final tools = [
      OpenAIToolModel(
          type: "function",
          function: OpenAIFunctionModel.withParameters(
            name: "getBooks",
            description: "Get a list of all available books in the library",
            parameters: [],
          )),
      OpenAIToolModel(
          type: "function",
          function: OpenAIFunctionModel.withParameters(
            name: "getOrders",
            description: "Get a list of orders for the current user",
            parameters: [],
          )),
      OpenAIToolModel(
          type: "function",
          function: OpenAIFunctionModel.withParameters(
            name: "getBookDetails",
            description: "Get details for a specific book by ID",
            parameters: [
              OpenAIFunctionProperty.integer(
                name: "id",
                description: "The ID of the book",
                isRequired: true,
              ),
            ],
          )),
    ];

    // First call
    final response = await OpenAI.instance.chat.create(
      model: "gpt-4o-mini",
      messages: [_systemMessage, ..._messages],
      tools: tools,
    );

    final choice = response.choices.first;
    final message = choice.message;

    // Add assistant response to history
    _messages.add(message);

    // Check for tool calls
    if (message.toolCalls != null && message.toolCalls!.isNotEmpty) {
      for (var toolCall in message.toolCalls!) {
        final functionName = toolCall.function.name;
        final args = jsonDecode(toolCall.function.arguments);
        String toolResult = "";

        try {
          if (functionName == 'getBooks') {
            final res = await _apiService.dio.get('/books');
            toolResult = jsonEncode(res.data);
          } else if (functionName == 'getOrders') {
            final res = await _apiService.dio.get('/orders');
            toolResult = jsonEncode(res.data);
          } else if (functionName == 'getBookDetails') {
            final id = args['id'];
            final res = await _apiService.dio.get('/books/$id');
            toolResult = jsonEncode(res.data);
          }
        } catch (e) {
          toolResult = "Error executing tool: $e";
        }

        // Add tool result to history
        _messages.add(RequestFunctionMessage(
          role: OpenAIChatMessageRole.tool,
          content: [
            OpenAIChatCompletionChoiceMessageContentItemModel.text(toolResult),
          ],
          toolCallId: toolCall.id!,
        ));
      }

      // Second call to get the final answer
      final finalResponse = await OpenAI.instance.chat.create(
        model: "gpt-4o-mini",
        messages: [_systemMessage, ..._messages],
      );
      
      final finalMessage = finalResponse.choices.first.message;
      _messages.add(finalMessage);
      return finalMessage.content?.first.text ?? "I couldn't generate a response.";
    }

    return message.content?.first.text ?? "I couldn't generate a response.";
  }
}
