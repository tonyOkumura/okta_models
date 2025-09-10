import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_attachment.g.dart';

@JsonSerializable()
class MessageAttachment extends Equatable {
  const MessageAttachment({
    required this.id,
    required this.messageId,
    required this.fileId,
    required this.createdAt,
  });

  final String id; // UUID
  @JsonKey(name: 'message_id')
  final String messageId; // UUID, REFERENCES messages(id)
  @JsonKey(name: 'file_id')
  final String fileId; // UUID, REFERENCES files(id)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL

  factory MessageAttachment.fromJson(Map<String, dynamic> json) =>
      _$MessageAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$MessageAttachmentToJson(this);

  @override
  List<Object?> get props => [id, messageId, fileId, createdAt];

  MessageAttachment copyWith({
    String? id,
    String? messageId,
    String? fileId,
    DateTime? createdAt,
  }) {
    return MessageAttachment(
      id: id ?? this.id,
      messageId: messageId ?? this.messageId,
      fileId: fileId ?? this.fileId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
