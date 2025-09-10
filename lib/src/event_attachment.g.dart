// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventAttachment _$EventAttachmentFromJson(Map<String, dynamic> json) =>
    EventAttachment(
      id: json['id'] as String,
      eventId: json['event_id'] as String,
      fileId: json['file_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$EventAttachmentToJson(EventAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'file_id': instance.fileId,
      'created_at': instance.createdAt.toIso8601String(),
    };
