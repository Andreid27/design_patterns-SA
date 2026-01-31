# openapi.api.ChaptersControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev.api.e-mentor.ro/service3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ChaptersControllerApi.md#callget) | **POST** /chapter/all-ids | Get chapters by id
[**create2**](ChaptersControllerApi.md#create2) | **POST** /chapter/create | Create a new chapter.
[**delete2**](ChaptersControllerApi.md#delete2) | **DELETE** /chapter/delete/{id} | Delete an existing chapter.
[**get3**](ChaptersControllerApi.md#get3) | **GET** /chapter/{id} | Get chapter by id
[**getPaginated2**](ChaptersControllerApi.md#getpaginated2) | **POST** /chapter/paginated | Get paginated chapters
[**update2**](ChaptersControllerApi.md#update2) | **PUT** /chapter/update | Update an existing chapter.


# **callGet**
> BuiltList<ChapterDTO> callGet(chapterDTO)

Get chapters by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChaptersControllerApi();
final BuiltList<ChapterDTO> chapterDTO = ; // BuiltList<ChapterDTO> | 

try {
    final response = api.callGet(chapterDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChaptersControllerApi->callGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chapterDTO** | [**BuiltList&lt;ChapterDTO&gt;**](ChapterDTO.md)|  | 

### Return type

[**BuiltList&lt;ChapterDTO&gt;**](ChapterDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create2**
> create2(chapterDTO)

Create a new chapter.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChaptersControllerApi();
final ChapterDTO chapterDTO = ; // ChapterDTO | 

try {
    api.create2(chapterDTO);
} catch on DioException (e) {
    print('Exception when calling ChaptersControllerApi->create2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chapterDTO** | [**ChapterDTO**](ChapterDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete2**
> delete2(id)

Delete an existing chapter.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChaptersControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.delete2(id);
} catch on DioException (e) {
    print('Exception when calling ChaptersControllerApi->delete2: $e\n');
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

# **get3**
> ChapterDTO get3(id)

Get chapter by id

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChaptersControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.get3(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChaptersControllerApi->get3: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ChapterDTO**](ChapterDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaginated2**
> PaginatedResponseChapter getPaginated2(paginatedRequest)

Get paginated chapters

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChaptersControllerApi();
final PaginatedRequest paginatedRequest = ; // PaginatedRequest | 

try {
    final response = api.getPaginated2(paginatedRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChaptersControllerApi->getPaginated2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paginatedRequest** | [**PaginatedRequest**](PaginatedRequest.md)|  | 

### Return type

[**PaginatedResponseChapter**](PaginatedResponseChapter.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update2**
> update2(chapterDTO)

Update an existing chapter.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getChaptersControllerApi();
final ChapterDTO chapterDTO = ; // ChapterDTO | 

try {
    api.update2(chapterDTO);
} catch on DioException (e) {
    print('Exception when calling ChaptersControllerApi->update2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chapterDTO** | [**ChapterDTO**](ChapterDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

