# openapi.api.QuizzesControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev.api.e-mentor.ro/service3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assign**](QuizzesControllerApi.md#assign) | **POST** /quiz/assign | Assign a quiz to a student.
[**create**](QuizzesControllerApi.md#create) | **POST** /quiz/create | Create a new quiz.
[**createComplete**](QuizzesControllerApi.md#createcomplete) | **POST** /quiz/create-complete | Create a new quiz with all new questions.
[**delete**](QuizzesControllerApi.md#delete) | **DELETE** /quiz/delete/{id} | Delete an existing quiz.
[**deleteAssigned**](QuizzesControllerApi.md#deleteassigned) | **DELETE** /quiz/delete-assigned/{id} | Delete a assigned quiz attempt of a student.
[**get1**](QuizzesControllerApi.md#get1) | **GET** /quiz/{id} | Get quiz by id
[**getAttempt**](QuizzesControllerApi.md#getattempt) | **GET** /quiz/attempt/{id} | Get quiz by id
[**getAttemptPreview**](QuizzesControllerApi.md#getattemptpreview) | **GET** /quiz/attempt-preview/{id} | Get quiz student view by id
[**getDashboardStats**](QuizzesControllerApi.md#getdashboardstats) | **GET** /quiz/dashboard-stats | Get student stats by id
[**getDashboardStats1**](QuizzesControllerApi.md#getdashboardstats1) | **GET** /quiz/dashboard-stats/{id} | Get quiz by id
[**getPaginated**](QuizzesControllerApi.md#getpaginated) | **POST** /quiz/paginated | Get paginated quizzes
[**getPaginatedQuizStudent**](QuizzesControllerApi.md#getpaginatedquizstudent) | **POST** /quiz/assigned-paginated | Get paginated quizzes
[**start**](QuizzesControllerApi.md#start) | **GET** /quiz/start/{id} | Start quiz by id
[**submit**](QuizzesControllerApi.md#submit) | **POST** /quiz/submit | Submit a quiz.
[**update**](QuizzesControllerApi.md#update) | **PUT** /quiz/update | Update an existing quiz.
[**updateComplete**](QuizzesControllerApi.md#updatecomplete) | **PUT** /quiz/update-complete | Update quiz with all new questions.


# **assign**
> assign(assignQuizDTO)

Assign a quiz to a student.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final BuiltList<AssignQuizDTO> assignQuizDTO = ; // BuiltList<AssignQuizDTO> | 

try {
    api.assign(assignQuizDTO);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->assign: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assignQuizDTO** | [**BuiltList&lt;AssignQuizDTO&gt;**](AssignQuizDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> create(quizDTO)

Create a new quiz.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final QuizDTO quizDTO = ; // QuizDTO | 

try {
    api.create(quizDTO);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quizDTO** | [**QuizDTO**](QuizDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createComplete**
> createComplete(quizWriteDTO)

Create a new quiz with all new questions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final QuizWriteDTO quizWriteDTO = ; // QuizWriteDTO | 

try {
    api.createComplete(quizWriteDTO);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->createComplete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quizWriteDTO** | [**QuizWriteDTO**](QuizWriteDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(id)

Delete an existing quiz.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.delete(id);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->delete: $e\n');
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

# **deleteAssigned**
> deleteAssigned(id)

Delete a assigned quiz attempt of a student.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteAssigned(id);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->deleteAssigned: $e\n');
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

# **get1**
> QuizDTO get1(id)

Get quiz by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.get1(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->get1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**QuizDTO**](QuizDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttempt**
> SubmitQuizDTO getAttempt(id)

Get quiz by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getAttempt(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->getAttempt: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**SubmitQuizDTO**](SubmitQuizDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttemptPreview**
> QuizzesStudentsView getAttemptPreview(id)

Get quiz student view by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getAttemptPreview(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->getAttemptPreview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**QuizzesStudentsView**](QuizzesStudentsView.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDashboardStats**
> StudentStatsDTO getDashboardStats(days)

Get student stats by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final int days = 56; // int | 

try {
    final response = api.getDashboardStats(days);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->getDashboardStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **int**|  | [optional] 

### Return type

[**StudentStatsDTO**](StudentStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDashboardStats1**
> StudentStatsDTO getDashboardStats1(id, days)

Get quiz by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int days = 56; // int | 

try {
    final response = api.getDashboardStats1(id, days);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->getDashboardStats1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **days** | **int**|  | [optional] 

### Return type

[**StudentStatsDTO**](StudentStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaginated**
> PaginatedResponseQuizzesView getPaginated(paginatedRequest)

Get paginated quizzes

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final PaginatedRequest paginatedRequest = ; // PaginatedRequest | 

try {
    final response = api.getPaginated(paginatedRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->getPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paginatedRequest** | [**PaginatedRequest**](PaginatedRequest.md)|  | 

### Return type

[**PaginatedResponseQuizzesView**](PaginatedResponseQuizzesView.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaginatedQuizStudent**
> PaginatedResponseQuizzesStudentsView getPaginatedQuizStudent(paginatedRequest)

Get paginated quizzes

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final PaginatedRequest paginatedRequest = ; // PaginatedRequest | 

try {
    final response = api.getPaginatedQuizStudent(paginatedRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->getPaginatedQuizStudent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paginatedRequest** | [**PaginatedRequest**](PaginatedRequest.md)|  | 

### Return type

[**PaginatedResponseQuizzesStudentsView**](PaginatedResponseQuizzesStudentsView.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start**
> QuizDTO start(id)

Start quiz by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.start(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->start: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**QuizDTO**](QuizDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit**
> SubmitQuizDTO submit(submitQuizDTO)

Submit a quiz.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final SubmitQuizDTO submitQuizDTO = ; // SubmitQuizDTO | 

try {
    final response = api.submit(submitQuizDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->submit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submitQuizDTO** | [**SubmitQuizDTO**](SubmitQuizDTO.md)|  | 

### Return type

[**SubmitQuizDTO**](SubmitQuizDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> update(quizDTO)

Update an existing quiz.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final QuizDTO quizDTO = ; // QuizDTO | 

try {
    api.update(quizDTO);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->update: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quizDTO** | [**QuizDTO**](QuizDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateComplete**
> updateComplete(quizWriteDTO)

Update quiz with all new questions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuizzesControllerApi();
final QuizWriteDTO quizWriteDTO = ; // QuizWriteDTO | 

try {
    api.updateComplete(quizWriteDTO);
} catch on DioException (e) {
    print('Exception when calling QuizzesControllerApi->updateComplete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quizWriteDTO** | [**QuizWriteDTO**](QuizWriteDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

