import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_tag.g.dart';

@JsonSerializable()
class EventTag extends Equatable {
  const EventTag({
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

  factory EventTag.fromJson(Map<String, dynamic> json) =>
      _$EventTagFromJson(json);

  Map<String, dynamic> toJson() => _$EventTagToJson(this);

  @override
  List<Object?> get props => [id, userId, name, color, createdAt];

  EventTag copyWith({
    String? id,
    String? userId,
    String? name,
    String? color,
    DateTime? createdAt,
  }) {
    return EventTag(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
