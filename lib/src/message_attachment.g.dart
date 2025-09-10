// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageAttachment _$MessageAttachmentFromJson(Map<String, dynamic> json) =>
    MessageAttachment(
      id: json['id'] as String,
      messageId: json['message_id'] as String,
      fileId: json['file_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$MessageAttachmentToJson(MessageAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message_id': instance.messageId,
      'file_id': instance.fileId,
      'created_at': instance.createdAt.toIso8601String(),
    };
