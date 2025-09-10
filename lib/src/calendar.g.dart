// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Calendar _$CalendarFromJson(Map<String, dynamic> json) => Calendar(
  id: json['id'] as String,
  ownerId: json['owner_id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  color: json['color'] as String?,
  timeZone: json['time_zone'] as String,
  isPrimary: json['is_primary'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$CalendarToJson(Calendar instance) => <String, dynamic>{
  'id': instance.id,
  'owner_id': instance.ownerId,
  'name': instance.name,
  'description': instance.description,
  'color': instance.color,
  'time_zone': instance.timeZone,
  'is_primary': instance.isPrimary,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
