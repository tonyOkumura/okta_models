// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationFolder _$ConversationFolderFromJson(Map<String, dynamic> json) =>
    ConversationFolder(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ConversationFolderToJson(ConversationFolder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
