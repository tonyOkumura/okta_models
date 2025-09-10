import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

enum MessageType {
  @JsonValue('text')
  text,
  @JsonValue('system')
  system,
  @JsonValue('image')
  image,
  @JsonValue('video')
  video,
  @JsonValue('audio')
  audio,
  @JsonValue('voice')
  voice,
  @JsonValue('gif')
  gif,
  @JsonValue('file')
  file,
  @JsonValue('sticker')
  sticker,
  @JsonValue('link')
  link,
  @JsonValue('embed')
  embed,
  @JsonValue('code')
  code,
  @JsonValue('table')
  table,
  @JsonValue('form')
  form,
  @JsonValue('poll')
  poll,
  @JsonValue('note')
  note,
  @JsonValue('task')
  task,
  @JsonValue('checklist')
  checklist,
  @JsonValue('reminder')
  reminder,
  @JsonValue('event')
  event,
  @JsonValue('location')
  location,
  @JsonValue('contact')
  contact,
  @JsonValue('calendar')
  calendar,
}

@JsonSerializable()
class Message extends Equatable {
  const Message({
    required this.id,
    required this.conversationId,
    required this.senderId,
    this.title,
    this.content,
    this.payload,
    required this.messageType,
    this.repliedToMessageId,
    required this.isForwarded,
    this.forwardedFromMessageId,
    this.forwardedFromUserId,
    required this.isEdited,
    this.editedAt,
    required this.isDeleted,
    this.deletedAt,
    this.deletedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'conversation_id')
  final String conversationId; // UUID, REFERENCES conversations(id)
  @JsonKey(name: 'sender_id')
  final String senderId; // UUID, REFERENCES users(id)
  final String? title; // VARCHAR(255)
  final String? content; // TEXT
  final Map<String, dynamic>? payload; // JSONB
  @JsonKey(name: 'message_type')
  final MessageType messageType; // ENUM
  @JsonKey(name: 'replied_to_message_id')
  final String? repliedToMessageId; // UUID, REFERENCES messages(id)
  @JsonKey(name: 'is_forwarded')
  final bool isForwarded; // BOOLEAN, NOT NULL
  @JsonKey(name: 'forwarded_from_message_id')
  final String? forwardedFromMessageId; // UUID, REFERENCES messages(id)
  @JsonKey(name: 'forwarded_from_user_id')
  final String? forwardedFromUserId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'is_edited')
  final bool isEdited; // BOOLEAN, NOT NULL
  @JsonKey(name: 'edited_at')
  final DateTime? editedAt; // TIMESTAMPTZ
  @JsonKey(name: 'is_deleted')
  final bool isDeleted; // BOOLEAN, NOT NULL
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt; // TIMESTAMPTZ
  @JsonKey(name: 'deleted_by')
  final String? deletedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  List<Object?> get props => [
    id,
    conversationId,
    senderId,
    title,
    content,
    payload,
    messageType,
    repliedToMessageId,
    isForwarded,
    forwardedFromMessageId,
    forwardedFromUserId,
    isEdited,
    editedAt,
    isDeleted,
    deletedAt,
    deletedBy,
    createdAt,
    updatedAt,
  ];

  Message copyWith({
    String? id,
    String? conversationId,
    String? senderId,
    String? title,
    String? content,
    Map<String, dynamic>? payload,
    MessageType? messageType,
    String? repliedToMessageId,
    bool? isForwarded,
    String? forwardedFromMessageId,
    String? forwardedFromUserId,
    bool? isEdited,
    DateTime? editedAt,
    bool? isDeleted,
    DateTime? deletedAt,
    String? deletedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Message(
      id: id ?? this.id,
      conversationId: conversationId ?? this.conversationId,
      senderId: senderId ?? this.senderId,
      title: title ?? this.title,
      content: content ?? this.content,
      payload: payload ?? this.payload,
      messageType: messageType ?? this.messageType,
      repliedToMessageId: repliedToMessageId ?? this.repliedToMessageId,
      isForwarded: isForwarded ?? this.isForwarded,
      forwardedFromMessageId:
          forwardedFromMessageId ?? this.forwardedFromMessageId,
      forwardedFromUserId: forwardedFromUserId ?? this.forwardedFromUserId,
      isEdited: isEdited ?? this.isEdited,
      editedAt: editedAt ?? this.editedAt,
      isDeleted: isDeleted ?? this.isDeleted,
      deletedAt: deletedAt ?? this.deletedAt,
      deletedBy: deletedBy ?? this.deletedBy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
