// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_checklist_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskChecklistItem _$TaskChecklistItemFromJson(Map<String, dynamic> json) =>
    TaskChecklistItem(
      id: json['id'] as String,
      taskId: json['task_id'] as String,
      content: json['content'] as String,
      isDone: json['is_done'] as bool,
      position: (json['position'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$TaskChecklistItemToJson(TaskChecklistItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_id': instance.taskId,
      'content': instance.content,
      'is_done': instance.isDone,
      'position': instance.position,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
