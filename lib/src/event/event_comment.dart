import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_comment.g.dart';

@JsonSerializable()
class EventComment extends Equatable {
  const EventComment({
    required this.id,
    required this.eventId,
    this.commenterId,
    required this.comment,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'event_id')
  final String eventId; // UUID, REFERENCES events(id)
  @JsonKey(name: 'commenter_id')
  final String? commenterId; // UUID, REFERENCES users(id)
  final String comment; // TEXT, NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory EventComment.fromJson(Map<String, dynamic> json) =>
      _$EventCommentFromJson(json);

  Map<String, dynamic> toJson() => _$EventCommentToJson(this);

  @override
  List<Object?> get props => [
    id,
    eventId,
    commenterId,
    comment,
    createdAt,
    updatedAt,
  ];

  EventComment copyWith({
    String? id,
    String? eventId,
    String? commenterId,
    String? comment,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return EventComment(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      commenterId: commenterId ?? this.commenterId,
      comment: comment ?? this.comment,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
