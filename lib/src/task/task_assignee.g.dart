// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_assignee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskAssignee _$TaskAssigneeFromJson(Map<String, dynamic> json) => TaskAssignee(
  taskId: json['task_id'] as String,
  userId: json['user_id'] as String,
  assignedBy: json['assigned_by'] as String?,
  assignedAt: DateTime.parse(json['assigned_at'] as String),
);

Map<String, dynamic> _$TaskAssigneeToJson(TaskAssignee instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'user_id': instance.userId,
      'assigned_by': instance.assignedBy,
      'assigned_at': instance.assignedAt.toIso8601String(),
    };
