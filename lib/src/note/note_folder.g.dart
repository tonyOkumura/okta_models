// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteFolder _$NoteFolderFromJson(Map<String, dynamic> json) => NoteFolder(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  name: json['name'] as String,
  parentFolderId: json['parent_folder_id'] as String?,
  sortOrder: (json['sort_order'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$NoteFolderToJson(NoteFolder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'parent_folder_id': instance.parentFolderId,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
