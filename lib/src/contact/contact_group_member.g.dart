// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_group_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactGroupMember _$ContactGroupMemberFromJson(Map<String, dynamic> json) =>
    ContactGroupMember(
      groupId: json['group_id'] as String,
      contactId: json['contact_id'] as String,
      addedBy: json['added_by'] as String?,
      addedAt: DateTime.parse(json['added_at'] as String),
    );

Map<String, dynamic> _$ContactGroupMemberToJson(ContactGroupMember instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'contact_id': instance.contactId,
      'added_by': instance.addedBy,
      'added_at': instance.addedAt.toIso8601String(),
    };
