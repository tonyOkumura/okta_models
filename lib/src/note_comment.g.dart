// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteComment _$NoteCommentFromJson(Map<String, dynamic> json) => NoteComment(
  id: json['id'] as String,
  noteId: json['note_id'] as String,
  commenterId: json['commenter_id'] as String?,
  comment: json['comment'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$NoteCommentToJson(NoteComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note_id': instance.noteId,
      'commenter_id': instance.commenterId,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
