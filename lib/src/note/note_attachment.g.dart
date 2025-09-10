// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteAttachment _$NoteAttachmentFromJson(Map<String, dynamic> json) =>
    NoteAttachment(
      id: json['id'] as String,
      noteId: json['note_id'] as String,
      fileId: json['file_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$NoteAttachmentToJson(NoteAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note_id': instance.noteId,
      'file_id': instance.fileId,
      'created_at': instance.createdAt.toIso8601String(),
    };
