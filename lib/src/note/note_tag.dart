import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_tag.g.dart';

@JsonSerializable()
class NoteTag extends Equatable {
  const NoteTag({
    required this.id,
    required this.userId,
    required this.name,
    this.color,
    required this.createdAt,
  });

  final String id; // UUID
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  final String name; // VARCHAR(100), NOT NULL
  final String? color; // VARCHAR(20)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL

  factory NoteTag.fromJson(Map<String, dynamic> json) =>
      _$NoteTagFromJson(json);

  Map<String, dynamic> toJson() => _$NoteTagToJson(this);

  @override
  List<Object?> get props => [id, userId, name, color, createdAt];

  NoteTag copyWith({
    String? id,
    String? userId,
    String? name,
    String? color,
    DateTime? createdAt,
  }) {
    return NoteTag(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
