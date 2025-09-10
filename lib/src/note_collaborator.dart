import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_collaborator.g.dart';

enum NoteCollaboratorRole {
  @JsonValue('viewer')
  viewer,
  @JsonValue('commenter')
  commenter,
  @JsonValue('editor')
  editor,
}

@JsonSerializable()
class NoteCollaborator extends Equatable {
  const NoteCollaborator({
    required this.noteId,
    required this.userId,
    required this.role,
    this.addedBy,
    required this.addedAt,
  });

  @JsonKey(name: 'note_id')
  final String noteId; // UUID, REFERENCES notes(id)
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  final NoteCollaboratorRole role; // ENUM('viewer', 'commenter', 'editor')
  @JsonKey(name: 'added_by')
  final String? addedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'added_at')
  final DateTime addedAt; // TIMESTAMPTZ, NOT NULL

  factory NoteCollaborator.fromJson(Map<String, dynamic> json) =>
      _$NoteCollaboratorFromJson(json);

  Map<String, dynamic> toJson() => _$NoteCollaboratorToJson(this);

  @override
  List<Object?> get props => [noteId, userId, role, addedBy, addedAt];

  NoteCollaborator copyWith({
    String? noteId,
    String? userId,
    NoteCollaboratorRole? role,
    String? addedBy,
    DateTime? addedAt,
  }) {
    return NoteCollaborator(
      noteId: noteId ?? this.noteId,
      userId: userId ?? this.userId,
      role: role ?? this.role,
      addedBy: addedBy ?? this.addedBy,
      addedAt: addedAt ?? this.addedAt,
    );
  }
}
