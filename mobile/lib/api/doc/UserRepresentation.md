# openapi.model.UserRepresentation

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**emailVerified** | **bool** |  | [optional] 
**attributes** | [**BuiltMap&lt;String, BuiltList&lt;String&gt;&gt;**](BuiltList.md) |  | [optional] 
**userProfileMetadata** | [**UserProfileMetadata**](UserProfileMetadata.md) |  | [optional] 
**self** | **String** |  | [optional] 
**origin** | **String** |  | [optional] 
**createdTimestamp** | **int** |  | [optional] 
**enabled** | **bool** |  | [optional] 
**totp** | **bool** |  | [optional] 
**federationLink** | **String** |  | [optional] 
**serviceAccountClientId** | **String** |  | [optional] 
**credentials** | [**BuiltList&lt;CredentialRepresentation&gt;**](CredentialRepresentation.md) |  | [optional] 
**disableableCredentialTypes** | **BuiltSet&lt;String&gt;** |  | [optional] 
**requiredActions** | **BuiltList&lt;String&gt;** |  | [optional] 
**federatedIdentities** | [**BuiltList&lt;FederatedIdentityRepresentation&gt;**](FederatedIdentityRepresentation.md) |  | [optional] 
**realmRoles** | **BuiltList&lt;String&gt;** |  | [optional] 
**clientRoles** | [**BuiltMap&lt;String, BuiltList&lt;String&gt;&gt;**](BuiltList.md) |  | [optional] 
**clientConsents** | [**BuiltList&lt;UserConsentRepresentation&gt;**](UserConsentRepresentation.md) |  | [optional] 
**notBefore** | **int** |  | [optional] 
**applicationRoles** | [**BuiltMap&lt;String, BuiltList&lt;String&gt;&gt;**](BuiltList.md) |  | [optional] 
**socialLinks** | [**BuiltList&lt;SocialLinkRepresentation&gt;**](SocialLinkRepresentation.md) |  | [optional] 
**groups** | **BuiltList&lt;String&gt;** |  | [optional] 
**access** | **BuiltMap&lt;String, bool&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


