import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_checklist_item.g.dart';

@JsonSerializable()
class NoteChecklistItem extends Equatable {
  const NoteChecklistItem({
    required this.id,
    required this.noteId,
    required this.content,
    required this.isDone,
    required this.position,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'note_id')
  final String noteId; // UUID, REFERENCES notes(id)
  final String content; // TEXT, NOT NULL
  @JsonKey(name: 'is_done')
  final bool isDone; // BOOLEAN, NOT NULL
  final int position; // INTEGER, NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory NoteChecklistItem.fromJson(Map<String, dynamic> json) =>
      _$NoteChecklistItemFromJson(json);

  Map<String, dynamic> toJson() => _$NoteChecklistItemToJson(this);

  @override
  List<Object?> get props => [
    id,
    noteId,
    content,
    isDone,
    position,
    createdAt,
    updatedAt,
  ];

  NoteChecklistItem copyWith({
    String? id,
    String? noteId,
    String? content,
    bool? isDone,
    int? position,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NoteChecklistItem(
      id: id ?? this.id,
      noteId: noteId ?? this.noteId,
      content: content ?? this.content,
      isDone: isDone ?? this.isDone,
      position: position ?? this.position,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
