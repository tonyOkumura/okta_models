// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskComment _$TaskCommentFromJson(Map<String, dynamic> json) => TaskComment(
  id: json['id'] as String,
  taskId: json['task_id'] as String,
  commenterId: json['commenter_id'] as String?,
  comment: json['comment'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$TaskCommentToJson(TaskComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_id': instance.taskId,
      'commenter_id': instance.commenterId,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
