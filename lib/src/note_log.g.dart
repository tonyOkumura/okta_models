// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteLog _$NoteLogFromJson(Map<String, dynamic> json) => NoteLog(
  id: json['id'] as String,
  noteId: json['note_id'] as String,
  action: json['action'] as String,
  oldValue: json['old_value'] as Map<String, dynamic>?,
  newValue: json['new_value'] as Map<String, dynamic>?,
  changedBy: json['changed_by'] as String?,
  changedAt: DateTime.parse(json['changed_at'] as String),
);

Map<String, dynamic> _$NoteLogToJson(NoteLog instance) => <String, dynamic>{
  'id': instance.id,
  'note_id': instance.noteId,
  'action': instance.action,
  'old_value': instance.oldValue,
  'new_value': instance.newValue,
  'changed_by': instance.changedBy,
  'changed_at': instance.changedAt.toIso8601String(),
};
