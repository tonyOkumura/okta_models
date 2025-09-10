import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_mention.g.dart';

@JsonSerializable()
class MessageMention extends Equatable {
  const MessageMention({
    required this.messageId,
    required this.userId,
    required this.createdAt,
  });

  @JsonKey(name: 'message_id')
  final String messageId; // UUID, REFERENCES messages(id)
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL

  factory MessageMention.fromJson(Map<String, dynamic> json) =>
      _$MessageMentionFromJson(json);

  Map<String, dynamic> toJson() => _$MessageMentionToJson(this);

  @override
  List<Object?> get props => [messageId, userId, createdAt];

  MessageMention copyWith({
    String? messageId,
    String? userId,
    DateTime? createdAt,
  }) {
    return MessageMention(
      messageId: messageId ?? this.messageId,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
