// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
  id: json['id'] as String,
  ownerId: json['owner_id'] as String,
  title: json['title'] as String,
  body: json['body'] as String?,
  content: json['content'],
  editorType: $enumDecode(_$NoteEditorTypeEnumMap, json['editor_type']),
  isPinned: json['is_pinned'] as bool,
  isArchived: json['is_archived'] as bool,
  archivedAt: json['archived_at'] == null
      ? null
      : DateTime.parse(json['archived_at'] as String),
  color: json['color'] as String?,
  icon: json['icon'] as String?,
  notebookId: json['notebook_id'] as String?,
  folderId: json['folder_id'] as String?,
  coverFileId: json['cover_file_id'] as String?,
  reminderAt: json['reminder_at'] == null
      ? null
      : DateTime.parse(json['reminder_at'] as String),
  lastActivityAt: json['last_activity_at'] == null
      ? null
      : DateTime.parse(json['last_activity_at'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
  'id': instance.id,
  'owner_id': instance.ownerId,
  'title': instance.title,
  'body': instance.body,
  'content': instance.content,
  'editor_type': _$NoteEditorTypeEnumMap[instance.editorType]!,
  'is_pinned': instance.isPinned,
  'is_archived': instance.isArchived,
  'archived_at': instance.archivedAt?.toIso8601String(),
  'color': instance.color,
  'icon': instance.icon,
  'notebook_id': instance.notebookId,
  'folder_id': instance.folderId,
  'cover_file_id': instance.coverFileId,
  'reminder_at': instance.reminderAt?.toIso8601String(),
  'last_activity_at': instance.lastActivityAt?.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$NoteEditorTypeEnumMap = {
  NoteEditorType.markdown: 'markdown',
  NoteEditorType.wysiwyg: 'wysiwyg',
  NoteEditorType.prosemirror: 'prosemirror',
  NoteEditorType.plaintext: 'plaintext',
};
