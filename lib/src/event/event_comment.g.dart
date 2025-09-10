// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventComment _$EventCommentFromJson(Map<String, dynamic> json) => EventComment(
  id: json['id'] as String,
  eventId: json['event_id'] as String,
  commenterId: json['commenter_id'] as String?,
  comment: json['comment'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$EventCommentToJson(EventComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'commenter_id': instance.commenterId,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
