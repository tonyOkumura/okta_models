// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationParticipant _$ConversationParticipantFromJson(
  Map<String, dynamic> json,
) => ConversationParticipant(
  conversationId: json['conversation_id'] as String,
  userId: json['user_id'] as String,
  role: $enumDecode(_$ParticipantRoleEnumMap, json['role']),
  joinedAt: DateTime.parse(json['joined_at'] as String),
  invitedBy: json['invited_by'] as String?,
  invitedAt: json['invited_at'] == null
      ? null
      : DateTime.parse(json['invited_at'] as String),
  leftAt: json['left_at'] == null
      ? null
      : DateTime.parse(json['left_at'] as String),
  alias: json['alias'] as String?,
  isMuted: json['is_muted'] as bool,
  muteUntil: json['mute_until'] == null
      ? null
      : DateTime.parse(json['mute_until'] as String),
  notificationLevel: $enumDecode(
    _$NotificationLevelEnumMap,
    json['notification_level'],
  ),
  isPinned: json['is_pinned'] as bool,
  customTitle: json['custom_title'] as String?,
  color: json['color'] as String?,
  permissions: json['permissions'] as Map<String, dynamic>,
  unreadCount: (json['unread_count'] as num).toInt(),
  lastReadAt: json['last_read_at'] == null
      ? null
      : DateTime.parse(json['last_read_at'] as String),
);

Map<String, dynamic> _$ConversationParticipantToJson(
  ConversationParticipant instance,
) => <String, dynamic>{
  'conversation_id': instance.conversationId,
  'user_id': instance.userId,
  'role': _$ParticipantRoleEnumMap[instance.role]!,
  'joined_at': instance.joinedAt.toIso8601String(),
  'invited_by': instance.invitedBy,
  'invited_at': instance.invitedAt?.toIso8601String(),
  'left_at': instance.leftAt?.toIso8601String(),
  'alias': instance.alias,
  'is_muted': instance.isMuted,
  'mute_until': instance.muteUntil?.toIso8601String(),
  'notification_level': _$NotificationLevelEnumMap[instance.notificationLevel]!,
  'is_pinned': instance.isPinned,
  'custom_title': instance.customTitle,
  'color': instance.color,
  'permissions': instance.permissions,
  'unread_count': instance.unreadCount,
  'last_read_at': instance.lastReadAt?.toIso8601String(),
};

const _$ParticipantRoleEnumMap = {
  ParticipantRole.member: 'member',
  ParticipantRole.admin: 'admin',
};

const _$NotificationLevelEnumMap = {
  NotificationLevel.all: 'all',
  NotificationLevel.mentions: 'mentions',
  NotificationLevel.none: 'none',
};
