import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversation_participant.g.dart';

enum ParticipantRole {
  @JsonValue('member')
  member,
  @JsonValue('admin')
  admin,
}

enum NotificationLevel {
  @JsonValue('all')
  all,
  @JsonValue('mentions')
  mentions,
  @JsonValue('none')
  none,
}

@JsonSerializable()
class ConversationParticipant extends Equatable {
  const ConversationParticipant({
    required this.conversationId,
    required this.userId,
    required this.role,
    required this.joinedAt,
    this.invitedBy,
    this.invitedAt,
    this.leftAt,
    this.alias,
    required this.isMuted,
    this.muteUntil,
    required this.notificationLevel,
    required this.isPinned,
    this.customTitle,
    this.color,
    required this.permissions,
    required this.unreadCount,
    this.lastReadAt,
  });

  @JsonKey(name: 'conversation_id')
  final String conversationId; // UUID, REFERENCES conversations(id)
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  final ParticipantRole role; // ENUM('member', 'admin')
  @JsonKey(name: 'joined_at')
  final DateTime joinedAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'invited_by')
  final String? invitedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'invited_at')
  final DateTime? invitedAt; // TIMESTAMPTZ
  @JsonKey(name: 'left_at')
  final DateTime? leftAt; // TIMESTAMPTZ
  final String? alias; // VARCHAR(100)
  @JsonKey(name: 'is_muted')
  final bool isMuted; // BOOLEAN, NOT NULL
  @JsonKey(name: 'mute_until')
  final DateTime? muteUntil; // TIMESTAMPTZ
  @JsonKey(name: 'notification_level')
  final NotificationLevel notificationLevel; // ENUM('all', 'mentions', 'none')
  @JsonKey(name: 'is_pinned')
  final bool isPinned; // BOOLEAN, NOT NULL
  @JsonKey(name: 'custom_title')
  final String? customTitle; // VARCHAR(100)
  final String? color; // VARCHAR(20)
  final Map<String, dynamic> permissions; // JSONB, NOT NULL
  @JsonKey(name: 'unread_count')
  final int unreadCount; // INTEGER, NOT NULL, CHECK (unread_count >= 0)
  @JsonKey(name: 'last_read_at')
  final DateTime? lastReadAt; // TIMESTAMPTZ

  factory ConversationParticipant.fromJson(Map<String, dynamic> json) =>
      _$ConversationParticipantFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationParticipantToJson(this);

  @override
  List<Object?> get props => [
    conversationId,
    userId,
    role,
    joinedAt,
    invitedBy,
    invitedAt,
    leftAt,
    alias,
    isMuted,
    muteUntil,
    notificationLevel,
    isPinned,
    customTitle,
    color,
    permissions,
    unreadCount,
    lastReadAt,
  ];

  ConversationParticipant copyWith({
    String? conversationId,
    String? userId,
    ParticipantRole? role,
    DateTime? joinedAt,
    String? invitedBy,
    DateTime? invitedAt,
    DateTime? leftAt,
    String? alias,
    bool? isMuted,
    DateTime? muteUntil,
    NotificationLevel? notificationLevel,
    bool? isPinned,
    String? customTitle,
    String? color,
    Map<String, dynamic>? permissions,
    int? unreadCount,
    DateTime? lastReadAt,
  }) {
    return ConversationParticipant(
      conversationId: conversationId ?? this.conversationId,
      userId: userId ?? this.userId,
      role: role ?? this.role,
      joinedAt: joinedAt ?? this.joinedAt,
      invitedBy: invitedBy ?? this.invitedBy,
      invitedAt: invitedAt ?? this.invitedAt,
      leftAt: leftAt ?? this.leftAt,
      alias: alias ?? this.alias,
      isMuted: isMuted ?? this.isMuted,
      muteUntil: muteUntil ?? this.muteUntil,
      notificationLevel: notificationLevel ?? this.notificationLevel,
      isPinned: isPinned ?? this.isPinned,
      customTitle: customTitle ?? this.customTitle,
      color: color ?? this.color,
      permissions: permissions ?? this.permissions,
      unreadCount: unreadCount ?? this.unreadCount,
      lastReadAt: lastReadAt ?? this.lastReadAt,
    );
  }
}
