// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskAttachment _$TaskAttachmentFromJson(Map<String, dynamic> json) =>
    TaskAttachment(
      id: json['id'] as String,
      taskId: json['task_id'] as String,
      fileId: json['file_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$TaskAttachmentToJson(TaskAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_id': instance.taskId,
      'file_id': instance.fileId,
      'created_at': instance.createdAt.toIso8601String(),
    };
