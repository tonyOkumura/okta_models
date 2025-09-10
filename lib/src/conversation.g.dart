// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Conversation _$ConversationFromJson(Map<String, dynamic> json) => Conversation(
  id: json['id'] as String,
  name: json['name'] as String?,
  topic: json['topic'] as String?,
  description: json['description'] as String?,
  isGroupChat: json['is_group_chat'] as bool,
  isPublic: json['is_public'] as bool,
  ownerId: json['owner_id'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  color: json['color'] as String?,
  inviteCode: json['invite_code'] as String?,
  inviteCodeExpiresAt: json['invite_code_expires_at'] == null
      ? null
      : DateTime.parse(json['invite_code_expires_at'] as String),
  slowModeSeconds: (json['slow_mode_seconds'] as num).toInt(),
  readReceiptsEnabled: json['read_receipts_enabled'] as bool,
  reactionsEnabled: json['reactions_enabled'] as bool,
  autoDeleteAfterDays: (json['auto_delete_after_days'] as num?)?.toInt(),
  lastMessageAt: json['last_message_at'] == null
      ? null
      : DateTime.parse(json['last_message_at'] as String),
  isArchived: json['is_archived'] as bool,
  archivedAt: json['archived_at'] == null
      ? null
      : DateTime.parse(json['archived_at'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  folderId: json['folder_id'] as String?,
);

Map<String, dynamic> _$ConversationToJson(Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'topic': instance.topic,
      'description': instance.description,
      'is_group_chat': instance.isGroupChat,
      'is_public': instance.isPublic,
      'owner_id': instance.ownerId,
      'avatar_url': instance.avatarUrl,
      'color': instance.color,
      'invite_code': instance.inviteCode,
      'invite_code_expires_at': instance.inviteCodeExpiresAt?.toIso8601String(),
      'slow_mode_seconds': instance.slowModeSeconds,
      'read_receipts_enabled': instance.readReceiptsEnabled,
      'reactions_enabled': instance.reactionsEnabled,
      'auto_delete_after_days': instance.autoDeleteAfterDays,
      'last_message_at': instance.lastMessageAt?.toIso8601String(),
      'is_archived': instance.isArchived,
      'archived_at': instance.archivedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'folder_id': instance.folderId,
    };
