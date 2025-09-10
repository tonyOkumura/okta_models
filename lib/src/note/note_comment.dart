import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_comment.g.dart';

@JsonSerializable()
class NoteComment extends Equatable {
  const NoteComment({
    required this.id,
    required this.noteId,
    this.commenterId,
    required this.comment,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'note_id')
  final String noteId; // UUID, REFERENCES notes(id)
  @JsonKey(name: 'commenter_id')
  final String? commenterId; // UUID, REFERENCES users(id)
  final String comment; // TEXT, NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory NoteComment.fromJson(Map<String, dynamic> json) =>
      _$NoteCommentFromJson(json);

  Map<String, dynamic> toJson() => _$NoteCommentToJson(this);

  @override
  List<Object?> get props => [
    id,
    noteId,
    commenterId,
    comment,
    createdAt,
    updatedAt,
  ];

  NoteComment copyWith({
    String? id,
    String? noteId,
    String? commenterId,
    String? comment,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NoteComment(
      id: id ?? this.id,
      noteId: noteId ?? this.noteId,
      commenterId: commenterId ?? this.commenterId,
      comment: comment ?? this.comment,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
