import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_log.g.dart';

@JsonSerializable()
class EventLog extends Equatable {
  const EventLog({
    required this.id,
    required this.eventId,
    required this.action,
    this.oldValue,
    this.newValue,
    this.changedBy,
    required this.changedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'event_id')
  final String eventId; // UUID, REFERENCES events(id)
  final String action; // VARCHAR(100), NOT NULL
  @JsonKey(name: 'old_value')
  final Map<String, dynamic>? oldValue; // JSONB
  @JsonKey(name: 'new_value')
  final Map<String, dynamic>? newValue; // JSONB
  @JsonKey(name: 'changed_by')
  final String? changedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'changed_at')
  final DateTime changedAt; // TIMESTAMPTZ, NOT NULL

  factory EventLog.fromJson(Map<String, dynamic> json) =>
      _$EventLogFromJson(json);

  Map<String, dynamic> toJson() => _$EventLogToJson(this);

  @override
  List<Object?> get props => [
    id,
    eventId,
    action,
    oldValue,
    newValue,
    changedBy,
    changedAt,
  ];

  EventLog copyWith({
    String? id,
    String? eventId,
    String? action,
    Map<String, dynamic>? oldValue,
    Map<String, dynamic>? newValue,
    String? changedBy,
    DateTime? changedAt,
  }) {
    return EventLog(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      action: action ?? this.action,
      oldValue: oldValue ?? this.oldValue,
      newValue: newValue ?? this.newValue,
      changedBy: changedBy ?? this.changedBy,
      changedAt: changedAt ?? this.changedAt,
    );
  }
}
