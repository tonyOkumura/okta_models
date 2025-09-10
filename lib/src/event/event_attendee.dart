import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_attendee.g.dart';

enum EventAttendeeResponseStatus {
  @JsonValue('needs_action')
  needsAction,
  @JsonValue('accepted')
  accepted,
  @JsonValue('declined')
  declined,
  @JsonValue('tentative')
  tentative,
  @JsonValue('delegated')
  delegated,
}

@JsonSerializable()
class EventAttendee extends Equatable {
  const EventAttendee({
    required this.id,
    required this.eventId,
    this.userId,
    this.email,
    required this.responseStatus,
    this.invitedBy,
    required this.invitedAt,
    this.comment,
  });

  final String id; // UUID
  @JsonKey(name: 'event_id')
  final String eventId; // UUID, REFERENCES events(id)
  @JsonKey(name: 'user_id')
  final String? userId; // UUID, REFERENCES users(id)
  final String? email; // VARCHAR(255)
  @JsonKey(name: 'response_status')
  final EventAttendeeResponseStatus responseStatus; // ENUM('needs_action', 'accepted', 'declined', 'tentative', 'delegated')
  @JsonKey(name: 'invited_by')
  final String? invitedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'invited_at')
  final DateTime invitedAt; // TIMESTAMPTZ, NOT NULL
  final String? comment; // TEXT

  factory EventAttendee.fromJson(Map<String, dynamic> json) =>
      _$EventAttendeeFromJson(json);

  Map<String, dynamic> toJson() => _$EventAttendeeToJson(this);

  @override
  List<Object?> get props => [
    id,
    eventId,
    userId,
    email,
    responseStatus,
    invitedBy,
    invitedAt,
    comment,
  ];

  EventAttendee copyWith({
    String? id,
    String? eventId,
    String? userId,
    String? email,
    EventAttendeeResponseStatus? responseStatus,
    String? invitedBy,
    DateTime? invitedAt,
    String? comment,
  }) {
    return EventAttendee(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      userId: userId ?? this.userId,
      email: email ?? this.email,
      responseStatus: responseStatus ?? this.responseStatus,
      invitedBy: invitedBy ?? this.invitedBy,
      invitedAt: invitedAt ?? this.invitedAt,
      comment: comment ?? this.comment,
    );
  }
}
