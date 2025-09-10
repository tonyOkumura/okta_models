// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageRead _$MessageReadFromJson(Map<String, dynamic> json) => MessageRead(
  messageId: json['message_id'] as String,
  userId: json['user_id'] as String,
  readAt: DateTime.parse(json['read_at'] as String),
);

Map<String, dynamic> _$MessageReadToJson(MessageRead instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'user_id': instance.userId,
      'read_at': instance.readAt.toIso8601String(),
    };
