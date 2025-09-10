import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_attachment.g.dart';

@JsonSerializable()
class NoteAttachment extends Equatable {
  const NoteAttachment({
    required this.id,
    required this.noteId,
    required this.fileId,
    required this.createdAt,
  });

  final String id; // UUID
  @JsonKey(name: 'note_id')
  final String noteId; // UUID, REFERENCES notes(id)
  @JsonKey(name: 'file_id')
  final String fileId; // UUID, REFERENCES files(id)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL

  factory NoteAttachment.fromJson(Map<String, dynamic> json) =>
      _$NoteAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$NoteAttachmentToJson(this);

  @override
  List<Object?> get props => [id, noteId, fileId, createdAt];

  NoteAttachment copyWith({
    String? id,
    String? noteId,
    String? fileId,
    DateTime? createdAt,
  }) {
    return NoteAttachment(
      id: id ?? this.id,
      noteId: noteId ?? this.noteId,
      fileId: fileId ?? this.fileId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
