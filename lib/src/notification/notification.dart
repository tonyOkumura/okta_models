import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

enum NotificationPriority {
  @JsonValue('low')
  low,
  @JsonValue('normal')
  normal,
  @JsonValue('high')
  high,
  @JsonValue('urgent')
  urgent,
}

enum NotificationTargetType {
  @JsonValue('user')
  user,
  @JsonValue('message')
  message,
  @JsonValue('conversation')
  conversation,
  @JsonValue('task')
  task,
  @JsonValue('file')
  file,
  @JsonValue('contact')
  contact,
}

@JsonSerializable()
class Notification extends Equatable {
  const Notification({
    required this.id,
    required this.userId,
    required this.category,
    required this.type,
    required this.priority,
    this.title,
    this.body,
    required this.data,
    this.actorUserId,
    this.targetType,
    this.targetId,
    this.conversationId,
    this.messageId,
    required this.isDelivered,
    this.deliveredAt,
    required this.isRead,
    this.readAt,
    this.snoozedUntil,
    required this.isArchived,
    this.aggregationKey,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  final String category; // VARCHAR(50), NOT NULL
  final String type; // VARCHAR(100), NOT NULL
  final NotificationPriority
  priority; // ENUM('low', 'normal', 'high', 'urgent')
  final String? title; // VARCHAR(255)
  final String? body; // TEXT
  final Map<String, dynamic> data; // JSONB, NOT NULL
  @JsonKey(name: 'actor_user_id')
  final String? actorUserId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'target_type')
  final NotificationTargetType? targetType; // VARCHAR(50)
  @JsonKey(name: 'target_id')
  final String? targetId; // UUID
  @JsonKey(name: 'conversation_id')
  final String? conversationId; // UUID, REFERENCES conversations(id)
  @JsonKey(name: 'message_id')
  final String? messageId; // UUID, REFERENCES messages(id)
  @JsonKey(name: 'is_delivered')
  final bool isDelivered; // BOOLEAN, NOT NULL
  @JsonKey(name: 'delivered_at')
  final DateTime? deliveredAt; // TIMESTAMPTZ
  @JsonKey(name: 'is_read')
  final bool isRead; // BOOLEAN, NOT NULL
  @JsonKey(name: 'read_at')
  final DateTime? readAt; // TIMESTAMPTZ
  @JsonKey(name: 'snoozed_until')
  final DateTime? snoozedUntil; // TIMESTAMPTZ
  @JsonKey(name: 'is_archived')
  final bool isArchived; // BOOLEAN, NOT NULL
  @JsonKey(name: 'aggregation_key')
  final String? aggregationKey; // VARCHAR(200)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);

  @override
  List<Object?> get props => [
    id,
    userId,
    category,
    type,
    priority,
    title,
    body,
    data,
    actorUserId,
    targetType,
    targetId,
    conversationId,
    messageId,
    isDelivered,
    deliveredAt,
    isRead,
    readAt,
    snoozedUntil,
    isArchived,
    aggregationKey,
    createdAt,
    updatedAt,
  ];

  Notification copyWith({
    String? id,
    String? userId,
    String? category,
    String? type,
    NotificationPriority? priority,
    String? title,
    String? body,
    Map<String, dynamic>? data,
    String? actorUserId,
    NotificationTargetType? targetType,
    String? targetId,
    String? conversationId,
    String? messageId,
    bool? isDelivered,
    DateTime? deliveredAt,
    bool? isRead,
    DateTime? readAt,
    DateTime? snoozedUntil,
    bool? isArchived,
    String? aggregationKey,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Notification(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      category: category ?? this.category,
      type: type ?? this.type,
      priority: priority ?? this.priority,
      title: title ?? this.title,
      body: body ?? this.body,
      data: data ?? this.data,
      actorUserId: actorUserId ?? this.actorUserId,
      targetType: targetType ?? this.targetType,
      targetId: targetId ?? this.targetId,
      conversationId: conversationId ?? this.conversationId,
      messageId: messageId ?? this.messageId,
      isDelivered: isDelivered ?? this.isDelivered,
      deliveredAt: deliveredAt ?? this.deliveredAt,
      isRead: isRead ?? this.isRead,
      readAt: readAt ?? this.readAt,
      snoozedUntil: snoozedUntil ?? this.snoozedUntil,
      isArchived: isArchived ?? this.isArchived,
      aggregationKey: aggregationKey ?? this.aggregationKey,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
