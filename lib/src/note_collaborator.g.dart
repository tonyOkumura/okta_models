// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_collaborator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteCollaborator _$NoteCollaboratorFromJson(Map<String, dynamic> json) =>
    NoteCollaborator(
      noteId: json['note_id'] as String,
      userId: json['user_id'] as String,
      role: $enumDecode(_$NoteCollaboratorRoleEnumMap, json['role']),
      addedBy: json['added_by'] as String?,
      addedAt: DateTime.parse(json['added_at'] as String),
    );

Map<String, dynamic> _$NoteCollaboratorToJson(NoteCollaborator instance) =>
    <String, dynamic>{
      'note_id': instance.noteId,
      'user_id': instance.userId,
      'role': _$NoteCollaboratorRoleEnumMap[instance.role]!,
      'added_by': instance.addedBy,
      'added_at': instance.addedAt.toIso8601String(),
    };

const _$NoteCollaboratorRoleEnumMap = {
  NoteCollaboratorRole.viewer: 'viewer',
  NoteCollaboratorRole.commenter: 'commenter',
  NoteCollaboratorRole.editor: 'editor',
};
