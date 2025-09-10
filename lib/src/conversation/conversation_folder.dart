import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversation_folder.g.dart';

@JsonSerializable()
class ConversationFolder extends Equatable {
  const ConversationFolder({
    required this.id,
    required this.userId,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  final String name; // VARCHAR(100), название папки
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory ConversationFolder.fromJson(Map<String, dynamic> json) =>
      _$ConversationFolderFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationFolderToJson(this);

  @override
  List<Object?> get props => [id, userId, name, createdAt, updatedAt];

  ConversationFolder copyWith({
    String? id,
    String? userId,
    String? name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ConversationFolder(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
