// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalendarMember _$CalendarMemberFromJson(Map<String, dynamic> json) =>
    CalendarMember(
      calendarId: json['calendar_id'] as String,
      userId: json['user_id'] as String,
      role: $enumDecode(_$CalendarMemberRoleEnumMap, json['role']),
      addedBy: json['added_by'] as String?,
      addedAt: DateTime.parse(json['added_at'] as String),
    );

Map<String, dynamic> _$CalendarMemberToJson(CalendarMember instance) =>
    <String, dynamic>{
      'calendar_id': instance.calendarId,
      'user_id': instance.userId,
      'role': _$CalendarMemberRoleEnumMap[instance.role]!,
      'added_by': instance.addedBy,
      'added_at': instance.addedAt.toIso8601String(),
    };

const _$CalendarMemberRoleEnumMap = {
  CalendarMemberRole.viewer: 'viewer',
  CalendarMemberRole.editor: 'editor',
  CalendarMemberRole.owner: 'owner',
};
