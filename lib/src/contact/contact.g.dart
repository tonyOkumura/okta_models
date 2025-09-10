// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  contactId: json['contact_id'] as String,
  status: $enumDecode(_$ContactStatusEnumMap, json['status']),
  isFavorite: json['is_favorite'] as bool,
  nickname: json['nickname'] as String?,
  note: json['note'] as String?,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  addedBy: json['added_by'] as String?,
  lastInteractionAt: json['last_interaction_at'] == null
      ? null
      : DateTime.parse(json['last_interaction_at'] as String),
  confirmedAt: json['confirmed_at'] == null
      ? null
      : DateTime.parse(json['confirmed_at'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'contact_id': instance.contactId,
  'status': _$ContactStatusEnumMap[instance.status]!,
  'is_favorite': instance.isFavorite,
  'nickname': instance.nickname,
  'note': instance.note,
  'tags': instance.tags,
  'added_by': instance.addedBy,
  'last_interaction_at': instance.lastInteractionAt?.toIso8601String(),
  'confirmed_at': instance.confirmedAt?.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$ContactStatusEnumMap = {
  ContactStatus.pending: 'pending',
  ContactStatus.accepted: 'accepted',
  ContactStatus.blocked: 'blocked',
};
