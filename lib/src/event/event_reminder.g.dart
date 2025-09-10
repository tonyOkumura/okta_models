// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventReminder _$EventReminderFromJson(Map<String, dynamic> json) =>
    EventReminder(
      id: json['id'] as String,
      eventId: json['event_id'] as String,
      method: $enumDecode(_$EventReminderMethodEnumMap, json['method']),
      minutesBefore: (json['minutes_before'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$EventReminderToJson(EventReminder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'method': _$EventReminderMethodEnumMap[instance.method]!,
      'minutes_before': instance.minutesBefore,
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$EventReminderMethodEnumMap = {
  EventReminderMethod.popup: 'popup',
  EventReminderMethod.email: 'email',
  EventReminderMethod.push: 'push',
};
