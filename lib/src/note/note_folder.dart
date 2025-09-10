import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_folder.g.dart';

@JsonSerializable()
class NoteFolder extends Equatable {
  const NoteFolder({
    required this.id,
    required this.userId,
    required this.name,
    this.parentFolderId,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  final String name; // VARCHAR(150), NOT NULL
  @JsonKey(name: 'parent_folder_id')
  final String? parentFolderId; // UUID, REFERENCES note_folders(id)
  @JsonKey(name: 'sort_order')
  final int sortOrder; // INTEGER, NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory NoteFolder.fromJson(Map<String, dynamic> json) =>
      _$NoteFolderFromJson(json);

  Map<String, dynamic> toJson() => _$NoteFolderToJson(this);

  @override
  List<Object?> get props => [
    id,
    userId,
    name,
    parentFolderId,
    sortOrder,
    createdAt,
    updatedAt,
  ];

  NoteFolder copyWith({
    String? id,
    String? userId,
    String? name,
    String? parentFolderId,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NoteFolder(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      parentFolderId: parentFolderId ?? this.parentFolderId,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
