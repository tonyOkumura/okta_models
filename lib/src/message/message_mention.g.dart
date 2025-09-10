// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_mention.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageMention _$MessageMentionFromJson(Map<String, dynamic> json) =>
    MessageMention(
      messageId: json['message_id'] as String,
      userId: json['user_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$MessageMentionToJson(MessageMention instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
    };
