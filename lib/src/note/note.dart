import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note.g.dart';

enum NoteEditorType {
  @JsonValue('markdown')
  markdown,
  @JsonValue('wysiwyg')
  wysiwyg,
  @JsonValue('prosemirror')
  prosemirror,
  @JsonValue('plaintext')
  plaintext,
}

@JsonSerializable()
class Note extends Equatable {
  const Note({
    required this.id,
    required this.ownerId,
    required this.title,
    this.body,
    this.content,
    required this.editorType,
    required this.isPinned,
    required this.isArchived,
    this.archivedAt,
    this.color,
    this.icon,
    this.notebookId,
    this.folderId,
    this.coverFileId,
    this.reminderAt,
    this.lastActivityAt,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'owner_id')
  final String ownerId; // UUID, REFERENCES users(id)
  final String title; // VARCHAR(255), NOT NULL
  final String? body; // TEXT
  final dynamic content; // JSONB
  @JsonKey(name: 'editor_type')
  final NoteEditorType editorType; // ENUM('markdown', 'wysiwyg', 'prosemirror', 'plaintext')
  @JsonKey(name: 'is_pinned')
  final bool isPinned; // BOOLEAN, NOT NULL
  @JsonKey(name: 'is_archived')
  final bool isArchived; // BOOLEAN, NOT NULL
  @JsonKey(name: 'archived_at')
  final DateTime? archivedAt; // TIMESTAMPTZ
  final String? color; // VARCHAR(20)
  final String? icon; // VARCHAR(50)
  @JsonKey(name: 'notebook_id')
  final String? notebookId; // UUID, REFERENCES note_notebooks(id)
  @JsonKey(name: 'folder_id')
  final String? folderId; // UUID, REFERENCES note_folders(id)
  @JsonKey(name: 'cover_file_id')
  final String? coverFileId; // UUID, REFERENCES files(id)
  @JsonKey(name: 'reminder_at')
  final DateTime? reminderAt; // TIMESTAMPTZ
  @JsonKey(name: 'last_activity_at')
  final DateTime? lastActivityAt; // TIMESTAMPTZ
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  Map<String, dynamic> toJson() => _$NoteToJson(this);

  @override
  List<Object?> get props => [
    id,
    ownerId,
    title,
    body,
    content,
    editorType,
    isPinned,
    isArchived,
    archivedAt,
    color,
    icon,
    notebookId,
    folderId,
    coverFileId,
    reminderAt,
    lastActivityAt,
    createdAt,
    updatedAt,
  ];

  Note copyWith({
    String? id,
    String? ownerId,
    String? title,
    String? body,
    dynamic content,
    NoteEditorType? editorType,
    bool? isPinned,
    bool? isArchived,
    DateTime? archivedAt,
    String? color,
    String? icon,
    String? notebookId,
    String? folderId,
    String? coverFileId,
    DateTime? reminderAt,
    DateTime? lastActivityAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Note(
      id: id ?? this.id,
      ownerId: ownerId ?? this.ownerId,
      title: title ?? this.title,
      body: body ?? this.body,
      content: content ?? this.content,
      editorType: editorType ?? this.editorType,
      isPinned: isPinned ?? this.isPinned,
      isArchived: isArchived ?? this.isArchived,
      archivedAt: archivedAt ?? this.archivedAt,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      notebookId: notebookId ?? this.notebookId,
      folderId: folderId ?? this.folderId,
      coverFileId: coverFileId ?? this.coverFileId,
      reminderAt: reminderAt ?? this.reminderAt,
      lastActivityAt: lastActivityAt ?? this.lastActivityAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
