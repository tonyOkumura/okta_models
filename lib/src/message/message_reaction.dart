import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_reaction.g.dart';

@JsonSerializable()
class MessageReaction extends Equatable {
  const MessageReaction({
    required this.messageId,
    required this.userId,
    required this.emoji,
    required this.createdAt,
  });

  @JsonKey(name: 'message_id')
  final String messageId; // UUID, REFERENCES messages(id)
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  final String emoji; // VARCHAR(64), NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL

  factory MessageReaction.fromJson(Map<String, dynamic> json) =>
      _$MessageReactionFromJson(json);

  Map<String, dynamic> toJson() => _$MessageReactionToJson(this);

  @override
  List<Object?> get props => [messageId, userId, emoji, createdAt];

  MessageReaction copyWith({
    String? messageId,
    String? userId,
    String? emoji,
    DateTime? createdAt,
  }) {
    return MessageReaction(
      messageId: messageId ?? this.messageId,
      userId: userId ?? this.userId,
      emoji: emoji ?? this.emoji,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
