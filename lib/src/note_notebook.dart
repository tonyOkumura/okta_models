import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_notebook.g.dart';

@JsonSerializable()
class NoteNotebook extends Equatable {
  const NoteNotebook({
    required this.id,
    required this.userId,
    required this.name,
    this.description,
    this.color,
    this.icon,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  final String name; // VARCHAR(150), NOT NULL
  final String? description; // TEXT
  final String? color; // VARCHAR(20)
  final String? icon; // VARCHAR(50)
  @JsonKey(name: 'sort_order')
  final int sortOrder; // INTEGER, NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory NoteNotebook.fromJson(Map<String, dynamic> json) =>
      _$NoteNotebookFromJson(json);

  Map<String, dynamic> toJson() => _$NoteNotebookToJson(this);

  @override
  List<Object?> get props => [
    id,
    userId,
    name,
    description,
    color,
    icon,
    sortOrder,
    createdAt,
    updatedAt,
  ];

  NoteNotebook copyWith({
    String? id,
    String? userId,
    String? name,
    String? description,
    String? color,
    String? icon,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NoteNotebook(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      description: description ?? this.description,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
