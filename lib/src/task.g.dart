// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  status: $enumDecode(_$TaskStatusEnumMap, json['status']),
  priority: (json['priority'] as num).toInt(),
  creatorId: json['creator_id'] as String?,
  assigneeId: json['assignee_id'] as String?,
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  startedAt: json['started_at'] == null
      ? null
      : DateTime.parse(json['started_at'] as String),
  completedAt: json['completed_at'] == null
      ? null
      : DateTime.parse(json['completed_at'] as String),
  canceledAt: json['canceled_at'] == null
      ? null
      : DateTime.parse(json['canceled_at'] as String),
  lastActivityAt: json['last_activity_at'] == null
      ? null
      : DateTime.parse(json['last_activity_at'] as String),
  estimateHours: (json['estimate_hours'] as num?)?.toDouble(),
  spentHours: (json['spent_hours'] as num?)?.toDouble(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'status': _$TaskStatusEnumMap[instance.status]!,
  'priority': instance.priority,
  'creator_id': instance.creatorId,
  'assignee_id': instance.assigneeId,
  'start_date': instance.startDate?.toIso8601String(),
  'due_date': instance.dueDate?.toIso8601String(),
  'started_at': instance.startedAt?.toIso8601String(),
  'completed_at': instance.completedAt?.toIso8601String(),
  'canceled_at': instance.canceledAt?.toIso8601String(),
  'last_activity_at': instance.lastActivityAt?.toIso8601String(),
  'estimate_hours': instance.estimateHours,
  'spent_hours': instance.spentHours,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$TaskStatusEnumMap = {
  TaskStatus.open: 'open',
  TaskStatus.inProgress: 'in_progress',
  TaskStatus.onHold: 'on_hold',
  TaskStatus.done: 'done',
  TaskStatus.canceled: 'canceled',
};
