import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_log.g.dart';

@JsonSerializable()
class NoteLog extends Equatable {
  const NoteLog({
    required this.id,
    required this.noteId,
    required this.action,
    this.oldValue,
    this.newValue,
    this.changedBy,
    required this.changedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'note_id')
  final String noteId; // UUID, REFERENCES notes(id)
  final String action; // VARCHAR(100), NOT NULL
  @JsonKey(name: 'old_value')
  final Map<String, dynamic>? oldValue; // JSONB
  @JsonKey(name: 'new_value')
  final Map<String, dynamic>? newValue; // JSONB
  @JsonKey(name: 'changed_by')
  final String? changedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'changed_at')
  final DateTime changedAt; // TIMESTAMPTZ, NOT NULL

  factory NoteLog.fromJson(Map<String, dynamic> json) =>
      _$NoteLogFromJson(json);

  Map<String, dynamic> toJson() => _$NoteLogToJson(this);

  @override
  List<Object?> get props => [
    id,
    noteId,
    action,
    oldValue,
    newValue,
    changedBy,
    changedAt,
  ];

  NoteLog copyWith({
    String? id,
    String? noteId,
    String? action,
    Map<String, dynamic>? oldValue,
    Map<String, dynamic>? newValue,
    String? changedBy,
    DateTime? changedAt,
  }) {
    return NoteLog(
      id: id ?? this.id,
      noteId: noteId ?? this.noteId,
      action: action ?? this.action,
      oldValue: oldValue ?? this.oldValue,
      newValue: newValue ?? this.newValue,
      changedBy: changedBy ?? this.changedBy,
      changedAt: changedAt ?? this.changedAt,
    );
  }
}
