# openapi.api.QuestionsControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev.api.e-mentor.ro/service3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create1**](QuestionsControllerApi.md#create1) | **POST** /question/create | Create a new question.
[**delete1**](QuestionsControllerApi.md#delete1) | **DELETE** /question/delete/{id} | Delete a existing question.
[**get2**](QuestionsControllerApi.md#get2) | **GET** /question/{id} | Get question by id
[**getPaginated1**](QuestionsControllerApi.md#getpaginated1) | **POST** /question/paginated | Get paginated questions
[**update1**](QuestionsControllerApi.md#update1) | **PUT** /question/update | Update a existing student profile.


# **create1**
> create1(questionDTO)

Create a new question.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionsControllerApi();
final QuestionDTO questionDTO = ; // QuestionDTO | 

try {
    api.create1(questionDTO);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->create1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionDTO** | [**QuestionDTO**](QuestionDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete1**
> delete1(id)

Delete a existing question.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionsControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.delete1(id);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->delete1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get2**
> QuestionDTO get2(id)

Get question by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionsControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.get2(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->get2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**QuestionDTO**](QuestionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaginated1**
> PaginatedResponseQuestion getPaginated1(paginatedRequest)

Get paginated questions

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionsControllerApi();
final PaginatedRequest paginatedRequest = ; // PaginatedRequest | 

try {
    final response = api.getPaginated1(paginatedRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->getPaginated1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paginatedRequest** | [**PaginatedRequest**](PaginatedRequest.md)|  | 

### Return type

[**PaginatedResponseQuestion**](PaginatedResponseQuestion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update1**
> update1(questionDTO)

Update a existing student profile.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionsControllerApi();
final QuestionDTO questionDTO = ; // QuestionDTO | 

try {
    api.update1(questionDTO);
} catch on DioException (e) {
    print('Exception when calling QuestionsControllerApi->update1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionDTO** | [**QuestionDTO**](QuestionDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

