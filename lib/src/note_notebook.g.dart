// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_notebook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteNotebook _$NoteNotebookFromJson(Map<String, dynamic> json) => NoteNotebook(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  color: json['color'] as String?,
  icon: json['icon'] as String?,
  sortOrder: (json['sort_order'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$NoteNotebookToJson(NoteNotebook instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'description': instance.description,
      'color': instance.color,
      'icon': instance.icon,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
