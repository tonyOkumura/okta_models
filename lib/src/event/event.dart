import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

enum EventVisibility {
  @JsonValue('default')
  defaultVisibility,
  @JsonValue('public')
  public,
  @JsonValue('private')
  private,
  @JsonValue('confidential')
  confidential,
}

enum EventStatus {
  @JsonValue('planned')
  planned,
  @JsonValue('confirmed')
  confirmed,
  @JsonValue('canceled')
  canceled,
}

@JsonSerializable()
class Event extends Equatable {
  const Event({
    required this.id,
    required this.calendarId,
    this.creatorId,
    required this.title,
    this.description,
    this.locationText,
    this.locationLat,
    this.locationLng,
    required this.isAllDay,
    required this.startAt,
    this.endAt,
    required this.visibility,
    required this.status,
    this.onlineMeetingUrl,
    this.capacity,
    this.color,
    this.recurrenceRule,
    this.recurrenceExceptions,
    this.seriesMasterId,
    this.lastActivityAt,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'calendar_id')
  final String calendarId; // UUID, REFERENCES calendars(id)
  @JsonKey(name: 'creator_id')
  final String? creatorId; // UUID, REFERENCES users(id)
  final String title; // VARCHAR(255), NOT NULL
  final String? description; // TEXT
  @JsonKey(name: 'location_text')
  final String? locationText; // VARCHAR(255)
  @JsonKey(name: 'location_lat')
  final double? locationLat; // DOUBLE PRECISION
  @JsonKey(name: 'location_lng')
  final double? locationLng; // DOUBLE PRECISION
  @JsonKey(name: 'is_all_day')
  final bool isAllDay; // BOOLEAN, NOT NULL
  @JsonKey(name: 'start_at')
  final DateTime startAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'end_at')
  final DateTime? endAt; // TIMESTAMPTZ
  final EventVisibility
  visibility; // ENUM('default', 'public', 'private', 'confidential')
  final EventStatus status; // ENUM('planned', 'confirmed', 'canceled')
  @JsonKey(name: 'online_meeting_url')
  final String? onlineMeetingUrl; // TEXT
  final int? capacity; // INTEGER, CHECK (capacity >= 0)
  final String? color; // VARCHAR(20)
  @JsonKey(name: 'recurrence_rule')
  final String? recurrenceRule; // TEXT
  @JsonKey(name: 'recurrence_exceptions')
  final List<dynamic>? recurrenceExceptions; // JSONB
  @JsonKey(name: 'series_master_id')
  final String? seriesMasterId; // UUID, REFERENCES events(id)
  @JsonKey(name: 'last_activity_at')
  final DateTime? lastActivityAt; // TIMESTAMPTZ
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  List<Object?> get props => [
    id,
    calendarId,
    creatorId,
    title,
    description,
    locationText,
    locationLat,
    locationLng,
    isAllDay,
    startAt,
    endAt,
    visibility,
    status,
    onlineMeetingUrl,
    capacity,
    color,
    recurrenceRule,
    recurrenceExceptions,
    seriesMasterId,
    lastActivityAt,
    createdAt,
    updatedAt,
  ];

  Event copyWith({
    String? id,
    String? calendarId,
    String? creatorId,
    String? title,
    String? description,
    String? locationText,
    double? locationLat,
    double? locationLng,
    bool? isAllDay,
    DateTime? startAt,
    DateTime? endAt,
    EventVisibility? visibility,
    EventStatus? status,
    String? onlineMeetingUrl,
    int? capacity,
    String? color,
    String? recurrenceRule,
    List<dynamic>? recurrenceExceptions,
    String? seriesMasterId,
    DateTime? lastActivityAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Event(
      id: id ?? this.id,
      calendarId: calendarId ?? this.calendarId,
      creatorId: creatorId ?? this.creatorId,
      title: title ?? this.title,
      description: description ?? this.description,
      locationText: locationText ?? this.locationText,
      locationLat: locationLat ?? this.locationLat,
      locationLng: locationLng ?? this.locationLng,
      isAllDay: isAllDay ?? this.isAllDay,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      visibility: visibility ?? this.visibility,
      status: status ?? this.status,
      onlineMeetingUrl: onlineMeetingUrl ?? this.onlineMeetingUrl,
      capacity: capacity ?? this.capacity,
      color: color ?? this.color,
      recurrenceRule: recurrenceRule ?? this.recurrenceRule,
      recurrenceExceptions: recurrenceExceptions ?? this.recurrenceExceptions,
      seriesMasterId: seriesMasterId ?? this.seriesMasterId,
      lastActivityAt: lastActivityAt ?? this.lastActivityAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
