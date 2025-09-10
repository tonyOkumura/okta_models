import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_reminder.g.dart';

enum EventReminderMethod {
  @JsonValue('popup')
  popup,
  @JsonValue('email')
  email,
  @JsonValue('push')
  push,
}

@JsonSerializable()
class EventReminder extends Equatable {
  const EventReminder({
    required this.id,
    required this.eventId,
    required this.method,
    required this.minutesBefore,
    required this.createdAt,
  });

  final String id; // UUID
  @JsonKey(name: 'event_id')
  final String eventId; // UUID, REFERENCES events(id)
  final EventReminderMethod method; // ENUM('popup', 'email', 'push')
  @JsonKey(name: 'minutes_before')
  final int minutesBefore; // INTEGER, NOT NULL, CHECK (minutes_before >= 0)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL

  factory EventReminder.fromJson(Map<String, dynamic> json) =>
      _$EventReminderFromJson(json);

  Map<String, dynamic> toJson() => _$EventReminderToJson(this);

  @override
  List<Object?> get props => [id, eventId, method, minutesBefore, createdAt];

  EventReminder copyWith({
    String? id,
    String? eventId,
    EventReminderMethod? method,
    int? minutesBefore,
    DateTime? createdAt,
  }) {
    return EventReminder(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      method: method ?? this.method,
      minutesBefore: minutesBefore ?? this.minutesBefore,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
