# openapi.api.UserControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev.api.e-mentor.ro/service3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUsersWithRole**](UserControllerApi.md#getuserswithrole) | **GET** /users/role/{roleName} | 


# **getUsersWithRole**
> BuiltList<UserRepresentation> getUsersWithRole(roleName)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserControllerApi();
final String roleName = roleName_example; // String | 

try {
    final response = api.getUsersWithRole(roleName);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserControllerApi->getUsersWithRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleName** | **String**|  | 

### Return type

[**BuiltList&lt;UserRepresentation&gt;**](UserRepresentation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

