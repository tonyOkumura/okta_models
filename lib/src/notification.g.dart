// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) => Notification(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  category: json['category'] as String,
  type: json['type'] as String,
  priority: $enumDecode(_$NotificationPriorityEnumMap, json['priority']),
  title: json['title'] as String?,
  body: json['body'] as String?,
  data: json['data'] as Map<String, dynamic>,
  actorUserId: json['actor_user_id'] as String?,
  targetType: $enumDecodeNullable(
    _$NotificationTargetTypeEnumMap,
    json['target_type'],
  ),
  targetId: json['target_id'] as String?,
  conversationId: json['conversation_id'] as String?,
  messageId: json['message_id'] as String?,
  isDelivered: json['is_delivered'] as bool,
  deliveredAt: json['delivered_at'] == null
      ? null
      : DateTime.parse(json['delivered_at'] as String),
  isRead: json['is_read'] as bool,
  readAt: json['read_at'] == null
      ? null
      : DateTime.parse(json['read_at'] as String),
  snoozedUntil: json['snoozed_until'] == null
      ? null
      : DateTime.parse(json['snoozed_until'] as String),
  isArchived: json['is_archived'] as bool,
  aggregationKey: json['aggregation_key'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'category': instance.category,
      'type': instance.type,
      'priority': _$NotificationPriorityEnumMap[instance.priority]!,
      'title': instance.title,
      'body': instance.body,
      'data': instance.data,
      'actor_user_id': instance.actorUserId,
      'target_type': _$NotificationTargetTypeEnumMap[instance.targetType],
      'target_id': instance.targetId,
      'conversation_id': instance.conversationId,
      'message_id': instance.messageId,
      'is_delivered': instance.isDelivered,
      'delivered_at': instance.deliveredAt?.toIso8601String(),
      'is_read': instance.isRead,
      'read_at': instance.readAt?.toIso8601String(),
      'snoozed_until': instance.snoozedUntil?.toIso8601String(),
      'is_archived': instance.isArchived,
      'aggregation_key': instance.aggregationKey,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$NotificationPriorityEnumMap = {
  NotificationPriority.low: 'low',
  NotificationPriority.normal: 'normal',
  NotificationPriority.high: 'high',
  NotificationPriority.urgent: 'urgent',
};

const _$NotificationTargetTypeEnumMap = {
  NotificationTargetType.user: 'user',
  NotificationTargetType.message: 'message',
  NotificationTargetType.conversation: 'conversation',
  NotificationTargetType.task: 'task',
  NotificationTargetType.file: 'file',
  NotificationTargetType.contact: 'contact',
};
