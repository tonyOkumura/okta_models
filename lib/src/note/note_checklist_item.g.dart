// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_checklist_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteChecklistItem _$NoteChecklistItemFromJson(Map<String, dynamic> json) =>
    NoteChecklistItem(
      id: json['id'] as String,
      noteId: json['note_id'] as String,
      content: json['content'] as String,
      isDone: json['is_done'] as bool,
      position: (json['position'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$NoteChecklistItemToJson(NoteChecklistItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note_id': instance.noteId,
      'content': instance.content,
      'is_done': instance.isDone,
      'position': instance.position,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
