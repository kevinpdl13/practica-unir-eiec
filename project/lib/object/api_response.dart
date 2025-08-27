import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  bool succeeded = false;
  // ignore: prefer_typing_uninitialized_variables
  var messages;
  // ignore: prefer_typing_uninitialized_variables
  var data;
  // ignore: prefer_typing_uninitialized_variables
  var statusCode;
  // ignore: prefer_typing_uninitialized_variables
  var statusMessage;

  ApiResponse();

  factory ApiResponse.fromJson(Map<String,dynamic> data) =>
      _$ApiResponseFromJson(data);

  Map<String,dynamic> toJson() => _$ApiResponseToJson(this);

  @override
  String toString() {
    return 'ApiResponse{Succeeded: $succeeded, Messages: $messages, Data: $data, StatusCode: $statusCode, StatusMessage: $statusMessage}';
  }
}