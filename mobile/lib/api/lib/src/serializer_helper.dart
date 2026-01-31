import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:openapi/src/serializers.dart';

/// SerializerHelper provides utility methods for deserializing API responses
/// to work with the generated models when the response format doesn't match exactly
class SerializerHelper {
  /// Safely deserializes a response to a specific type
  /// This wrapper handles common format differences between the API and generated code
  static T? deserialize<T>(Response<dynamic> response, FullType fullType) {
    if (response.data == null) {
      return null;
    }

    try {
      final data = response.data;
      
      // If the response is a JSON object (Map) but the generated code expects a list/array,
      // we need to convert it to a format the deserializer understands
      if (fullType.root == BuiltList && data is Map<String, dynamic>) {
        // Create a wrapper that puts the object in an array
        final wrappedData = [data];
        return serializers.deserialize(
          wrappedData,
          specifiedType: fullType,
        ) as T;
      } 
      
      // If the response is a list but the generated code expects a single object
      else if (data is List && !fullType.toString().contains('BuiltList')) {
        // Take the first item if it's a list
        return data.isNotEmpty 
            ? serializers.deserialize(
                data.first,
                specifiedType: fullType,
              ) as T 
            : null;
      }
      
      // Standard deserialization
      return serializers.deserialize(
        data,
        specifiedType: fullType,
      ) as T;
    } catch (e, stackTrace) {
      print('Deserialization error for type $T: $e');
      print(stackTrace);
      print('Response data: ${response.data}');
      return null;
    }
  }
  
  /// Convert a Map<String, dynamic> to a built_value model
  static T? fromJson<T>(Map<String, dynamic> json, FullType fullType) {
    try {
      return serializers.deserialize(
        json,
        specifiedType: fullType,
      ) as T;
    } catch (e) {
      print('Error converting JSON to $T: $e');
      return null;
    }
  }
  
  /// Add a custom serializer for a specific type
  static void addSerializer(Serializer serializer) {
    final builder = serializers.toBuilder();
    builder.add(serializer);
    // Re-assign to the global serializers variable
    // Note: This might not work if serializers is a const/final
    // You might need a different approach in that case
  }
}
