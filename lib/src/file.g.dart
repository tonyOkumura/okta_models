// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

File _$FileFromJson(Map<String, dynamic> json) => File(
  id: json['id'] as String,
  ownerId: json['owner_id'] as String?,
  fileName: json['file_name'] as String,
  filePath: json['file_path'] as String,
  mimeType: json['mime_type'] as String?,
  fileSize: (json['file_size'] as num?)?.toInt(),
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  durationMs: (json['duration_ms'] as num?)?.toInt(),
  checksum: json['checksum'] as String?,
  storage: $enumDecode(_$StorageTypeEnumMap, json['storage']),
  meta: json['meta'] as Map<String, dynamic>,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$FileToJson(File instance) => <String, dynamic>{
  'id': instance.id,
  'owner_id': instance.ownerId,
  'file_name': instance.fileName,
  'file_path': instance.filePath,
  'mime_type': instance.mimeType,
  'file_size': instance.fileSize,
  'width': instance.width,
  'height': instance.height,
  'duration_ms': instance.durationMs,
  'checksum': instance.checksum,
  'storage': _$StorageTypeEnumMap[instance.storage]!,
  'meta': instance.meta,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$StorageTypeEnumMap = {StorageType.local: 'local', StorageType.s3: 's3'};
