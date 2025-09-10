// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteTag _$NoteTagFromJson(Map<String, dynamic> json) => NoteTag(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  name: json['name'] as String,
  color: json['color'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$NoteTagToJson(NoteTag instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'name': instance.name,
  'color': instance.color,
  'created_at': instance.createdAt.toIso8601String(),
};
