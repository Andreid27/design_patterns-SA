# openapi.model.QuizDTO

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**title** | **String** |  | 
**description** | **String** |  | [optional] 
**componentType** | **String** |  | [optional] 
**difficultyLevel** | **int** |  | [optional] 
**maxTime** | **int** |  | [optional] 
**chaptersId** | **BuiltList&lt;String&gt;** |  | [optional] 
**chapters** | [**BuiltList&lt;ChapterDTO&gt;**](ChapterDTO.md) |  | [optional] 
**questionsId** | **BuiltList&lt;String&gt;** |  | [optional] 
**questions** | [**BuiltList&lt;QuestionDTO&gt;**](QuestionDTO.md) |  | [optional] 
**endTime** | [**DateTime**](DateTime.md) |  | [optional] 
**createdBy** | **String** |  | [optional] 
**quizPreviousAttempts** | [**BuiltList&lt;QuizStudent&gt;**](QuizStudent.md) |  | [optional] 
**remainedAttempts** | **int** |  | [optional] 
**correctAnswers** | [**BuiltList&lt;SubmitedQuestionAnswer&gt;**](SubmitedQuestionAnswer.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


