import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_read.g.dart';

@JsonSerializable()
class MessageRead extends Equatable {
  const MessageRead({
    required this.messageId,
    required this.userId,
    required this.readAt,
  });

  @JsonKey(name: 'message_id')
  final String messageId; // UUID, REFERENCES messages(id)
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'read_at')
  final DateTime readAt; // TIMESTAMPTZ, NOT NULL

  factory MessageRead.fromJson(Map<String, dynamic> json) =>
      _$MessageReadFromJson(json);

  Map<String, dynamic> toJson() => _$MessageReadToJson(this);

  @override
  List<Object?> get props => [messageId, userId, readAt];

  MessageRead copyWith({String? messageId, String? userId, DateTime? readAt}) {
    return MessageRead(
      messageId: messageId ?? this.messageId,
      userId: userId ?? this.userId,
      readAt: readAt ?? this.readAt,
    );
  }
}
