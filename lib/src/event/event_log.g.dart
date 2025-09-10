// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventLog _$EventLogFromJson(Map<String, dynamic> json) => EventLog(
  id: json['id'] as String,
  eventId: json['event_id'] as String,
  action: json['action'] as String,
  oldValue: json['old_value'] as Map<String, dynamic>?,
  newValue: json['new_value'] as Map<String, dynamic>?,
  changedBy: json['changed_by'] as String?,
  changedAt: DateTime.parse(json['changed_at'] as String),
);

Map<String, dynamic> _$EventLogToJson(EventLog instance) => <String, dynamic>{
  'id': instance.id,
  'event_id': instance.eventId,
  'action': instance.action,
  'old_value': instance.oldValue,
  'new_value': instance.newValue,
  'changed_by': instance.changedBy,
  'changed_at': instance.changedAt.toIso8601String(),
};
