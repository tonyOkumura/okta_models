// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskLabel _$TaskLabelFromJson(Map<String, dynamic> json) => TaskLabel(
  id: json['id'] as String,
  name: json['name'] as String,
  color: json['color'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$TaskLabelToJson(TaskLabel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': instance.color,
  'created_at': instance.createdAt.toIso8601String(),
};
