// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
  id: json['id'] as String,
  conversationId: json['conversation_id'] as String,
  senderId: json['sender_id'] as String,
  title: json['title'] as String?,
  content: json['content'] as String?,
  payload: json['payload'] as Map<String, dynamic>?,
  messageType: $enumDecode(_$MessageTypeEnumMap, json['message_type']),
  repliedToMessageId: json['replied_to_message_id'] as String?,
  isForwarded: json['is_forwarded'] as bool,
  forwardedFromMessageId: json['forwarded_from_message_id'] as String?,
  forwardedFromUserId: json['forwarded_from_user_id'] as String?,
  isEdited: json['is_edited'] as bool,
  editedAt: json['edited_at'] == null
      ? null
      : DateTime.parse(json['edited_at'] as String),
  isDeleted: json['is_deleted'] as bool,
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
  deletedBy: json['deleted_by'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
  'id': instance.id,
  'conversation_id': instance.conversationId,
  'sender_id': instance.senderId,
  'title': instance.title,
  'content': instance.content,
  'payload': instance.payload,
  'message_type': _$MessageTypeEnumMap[instance.messageType]!,
  'replied_to_message_id': instance.repliedToMessageId,
  'is_forwarded': instance.isForwarded,
  'forwarded_from_message_id': instance.forwardedFromMessageId,
  'forwarded_from_user_id': instance.forwardedFromUserId,
  'is_edited': instance.isEdited,
  'edited_at': instance.editedAt?.toIso8601String(),
  'is_deleted': instance.isDeleted,
  'deleted_at': instance.deletedAt?.toIso8601String(),
  'deleted_by': instance.deletedBy,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.system: 'system',
  MessageType.image: 'image',
  MessageType.video: 'video',
  MessageType.audio: 'audio',
  MessageType.voice: 'voice',
  MessageType.gif: 'gif',
  MessageType.file: 'file',
  MessageType.sticker: 'sticker',
  MessageType.link: 'link',
  MessageType.embed: 'embed',
  MessageType.code: 'code',
  MessageType.table: 'table',
  MessageType.form: 'form',
  MessageType.poll: 'poll',
  MessageType.note: 'note',
  MessageType.task: 'task',
  MessageType.checklist: 'checklist',
  MessageType.reminder: 'reminder',
  MessageType.event: 'event',
  MessageType.location: 'location',
  MessageType.contact: 'contact',
  MessageType.calendar: 'calendar',
};
