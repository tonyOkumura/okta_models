// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_watcher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskWatcher _$TaskWatcherFromJson(Map<String, dynamic> json) => TaskWatcher(
  taskId: json['task_id'] as String,
  userId: json['user_id'] as String,
  addedAt: DateTime.parse(json['added_at'] as String),
);

Map<String, dynamic> _$TaskWatcherToJson(TaskWatcher instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'user_id': instance.userId,
      'added_at': instance.addedAt.toIso8601String(),
    };
