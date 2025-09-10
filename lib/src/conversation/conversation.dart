import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversation.g.dart';

@JsonSerializable()
class Conversation extends Equatable {
  const Conversation({
    required this.id,
    this.name,
    this.topic,
    this.description,
    required this.isGroupChat,
    required this.isPublic,
    this.ownerId,
    this.avatarUrl,
    this.color,
    this.inviteCode,
    this.inviteCodeExpiresAt,
    required this.slowModeSeconds,
    required this.readReceiptsEnabled,
    required this.reactionsEnabled,
    this.autoDeleteAfterDays,
    this.lastMessageAt,
    required this.isArchived,
    this.archivedAt,
    required this.createdAt,
    required this.updatedAt,
    this.folderId,
  });

  final String id; // UUID
  final String? name; // VARCHAR(100), NOT NULL for group chats
  final String? topic; // VARCHAR(255)
  final String? description; // TEXT
  @JsonKey(name: 'is_group_chat')
  final bool isGroupChat; // BOOLEAN, NOT NULL
  @JsonKey(name: 'is_public')
  final bool isPublic; // BOOLEAN, NOT NULL
  @JsonKey(name: 'owner_id')
  final String? ownerId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl; // TEXT
  final String? color; // VARCHAR(20)
  @JsonKey(name: 'invite_code')
  final String? inviteCode; // VARCHAR(64), UNIQUE
  @JsonKey(name: 'invite_code_expires_at')
  final DateTime? inviteCodeExpiresAt; // TIMESTAMPTZ
  @JsonKey(name: 'slow_mode_seconds')
  final int slowModeSeconds; // INTEGER, NOT NULL, CHECK (0 <= slow_mode_seconds <= 21600)
  @JsonKey(name: 'read_receipts_enabled')
  final bool readReceiptsEnabled; // BOOLEAN, NOT NULL
  @JsonKey(name: 'reactions_enabled')
  final bool reactionsEnabled; // BOOLEAN, NOT NULL
  @JsonKey(name: 'auto_delete_after_days')
  final int? autoDeleteAfterDays; // INTEGER, CHECK (0 <= auto_delete_after_days <= 3650)
  @JsonKey(name: 'last_message_at')
  final DateTime? lastMessageAt; // TIMESTAMPTZ
  @JsonKey(name: 'is_archived')
  final bool isArchived; // BOOLEAN, NOT NULL
  @JsonKey(name: 'archived_at')
  final DateTime? archivedAt; // TIMESTAMPTZ
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'folder_id')
  final String? folderId; // UUID, REFERENCES conversation_folders(id)

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationToJson(this);

  @override
  List<Object?> get props => [
    id,
    name,
    topic,
    description,
    isGroupChat,
    isPublic,
    ownerId,
    avatarUrl,
    color,
    inviteCode,
    inviteCodeExpiresAt,
    slowModeSeconds,
    readReceiptsEnabled,
    reactionsEnabled,
    autoDeleteAfterDays,
    lastMessageAt,
    isArchived,
    archivedAt,
    createdAt,
    updatedAt,
    folderId,
  ];

  Conversation copyWith({
    String? id,
    String? name,
    String? topic,
    String? description,
    bool? isGroupChat,
    bool? isPublic,
    String? ownerId,
    String? avatarUrl,
    String? color,
    String? inviteCode,
    DateTime? inviteCodeExpiresAt,
    int? slowModeSeconds,
    bool? readReceiptsEnabled,
    bool? reactionsEnabled,
    int? autoDeleteAfterDays,
    DateTime? lastMessageAt,
    bool? isArchived,
    DateTime? archivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? folderId,
  }) {
    return Conversation(
      id: id ?? this.id,
      name: name ?? this.name,
      topic: topic ?? this.topic,
      description: description ?? this.description,
      isGroupChat: isGroupChat ?? this.isGroupChat,
      isPublic: isPublic ?? this.isPublic,
      ownerId: ownerId ?? this.ownerId,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      color: color ?? this.color,
      inviteCode: inviteCode ?? this.inviteCode,
      inviteCodeExpiresAt: inviteCodeExpiresAt ?? this.inviteCodeExpiresAt,
      slowModeSeconds: slowModeSeconds ?? this.slowModeSeconds,
      readReceiptsEnabled: readReceiptsEnabled ?? this.readReceiptsEnabled,
      reactionsEnabled: reactionsEnabled ?? this.reactionsEnabled,
      autoDeleteAfterDays: autoDeleteAfterDays ?? this.autoDeleteAfterDays,
      lastMessageAt: lastMessageAt ?? this.lastMessageAt,
      isArchived: isArchived ?? this.isArchived,
      archivedAt: archivedAt ?? this.archivedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      folderId: folderId ?? this.folderId,
    );
  }
}
