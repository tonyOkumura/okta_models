// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dependency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskDependency _$TaskDependencyFromJson(Map<String, dynamic> json) =>
    TaskDependency(
      taskId: json['task_id'] as String,
      dependsOnTaskId: json['depends_on_task_id'] as String,
    );

Map<String, dynamic> _$TaskDependencyToJson(TaskDependency instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'depends_on_task_id': instance.dependsOnTaskId,
    };
