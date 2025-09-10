// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_attendee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventAttendee _$EventAttendeeFromJson(Map<String, dynamic> json) =>
    EventAttendee(
      id: json['id'] as String,
      eventId: json['event_id'] as String,
      userId: json['user_id'] as String?,
      email: json['email'] as String?,
      responseStatus: $enumDecode(
        _$EventAttendeeResponseStatusEnumMap,
        json['response_status'],
      ),
      invitedBy: json['invited_by'] as String?,
      invitedAt: DateTime.parse(json['invited_at'] as String),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$EventAttendeeToJson(EventAttendee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'user_id': instance.userId,
      'email': instance.email,
      'response_status':
          _$EventAttendeeResponseStatusEnumMap[instance.responseStatus]!,
      'invited_by': instance.invitedBy,
      'invited_at': instance.invitedAt.toIso8601String(),
      'comment': instance.comment,
    };

const _$EventAttendeeResponseStatusEnumMap = {
  EventAttendeeResponseStatus.needsAction: 'needs_action',
  EventAttendeeResponseStatus.accepted: 'accepted',
  EventAttendeeResponseStatus.declined: 'declined',
  EventAttendeeResponseStatus.tentative: 'tentative',
  EventAttendeeResponseStatus.delegated: 'delegated',
};
