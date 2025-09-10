// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
  id: json['id'] as String,
  calendarId: json['calendar_id'] as String,
  creatorId: json['creator_id'] as String?,
  title: json['title'] as String,
  description: json['description'] as String?,
  locationText: json['location_text'] as String?,
  locationLat: (json['location_lat'] as num?)?.toDouble(),
  locationLng: (json['location_lng'] as num?)?.toDouble(),
  isAllDay: json['is_all_day'] as bool,
  startAt: DateTime.parse(json['start_at'] as String),
  endAt: json['end_at'] == null
      ? null
      : DateTime.parse(json['end_at'] as String),
  visibility: $enumDecode(_$EventVisibilityEnumMap, json['visibility']),
  status: $enumDecode(_$EventStatusEnumMap, json['status']),
  onlineMeetingUrl: json['online_meeting_url'] as String?,
  capacity: (json['capacity'] as num?)?.toInt(),
  color: json['color'] as String?,
  recurrenceRule: json['recurrence_rule'] as String?,
  recurrenceExceptions: json['recurrence_exceptions'] as List<dynamic>?,
  seriesMasterId: json['series_master_id'] as String?,
  lastActivityAt: json['last_activity_at'] == null
      ? null
      : DateTime.parse(json['last_activity_at'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
  'id': instance.id,
  'calendar_id': instance.calendarId,
  'creator_id': instance.creatorId,
  'title': instance.title,
  'description': instance.description,
  'location_text': instance.locationText,
  'location_lat': instance.locationLat,
  'location_lng': instance.locationLng,
  'is_all_day': instance.isAllDay,
  'start_at': instance.startAt.toIso8601String(),
  'end_at': instance.endAt?.toIso8601String(),
  'visibility': _$EventVisibilityEnumMap[instance.visibility]!,
  'status': _$EventStatusEnumMap[instance.status]!,
  'online_meeting_url': instance.onlineMeetingUrl,
  'capacity': instance.capacity,
  'color': instance.color,
  'recurrence_rule': instance.recurrenceRule,
  'recurrence_exceptions': instance.recurrenceExceptions,
  'series_master_id': instance.seriesMasterId,
  'last_activity_at': instance.lastActivityAt?.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$EventVisibilityEnumMap = {
  EventVisibility.defaultVisibility: 'default',
  EventVisibility.public: 'public',
  EventVisibility.private: 'private',
  EventVisibility.confidential: 'confidential',
};

const _$EventStatusEnumMap = {
  EventStatus.planned: 'planned',
  EventStatus.confirmed: 'confirmed',
  EventStatus.canceled: 'canceled',
};
