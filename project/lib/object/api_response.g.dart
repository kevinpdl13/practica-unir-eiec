// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => ApiResponse()
  ..succeeded = json['succeeded'] as bool
  ..messages = json['messages']
  ..data = json['data']
  ..statusCode = json['statusCode']
  ..statusMessage = json['statusMessage'];

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'succeeded': instance.succeeded,
      'messages': instance.messages,
      'data': instance.data,
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
    };
