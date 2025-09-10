import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'file.g.dart';

enum StorageType {
  @JsonValue('local')
  local,
  @JsonValue('s3')
  s3,
}

@JsonSerializable()
class File extends Equatable {
  const File({
    required this.id,
    this.ownerId,
    required this.fileName,
    required this.filePath,
    this.mimeType,
    this.fileSize,
    this.width,
    this.height,
    this.durationMs,
    this.checksum,
    required this.storage,
    required this.meta,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'owner_id')
  final String? ownerId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'file_name')
  final String fileName; // VARCHAR(255), NOT NULL
  @JsonKey(name: 'file_path')
  final String filePath; // VARCHAR(500), NOT NULL, UNIQUE
  @JsonKey(name: 'mime_type')
  final String? mimeType; // VARCHAR(150)
  @JsonKey(name: 'file_size')
  final int? fileSize; // INTEGER, CHECK (file_size >= 0)
  final int? width; // INTEGER, CHECK (width >= 0)
  final int? height; // INTEGER, CHECK (height >= 0)
  @JsonKey(name: 'duration_ms')
  final int? durationMs; // INTEGER, CHECK (duration_ms >= 0)
  final String? checksum; // VARCHAR(128)
  final StorageType storage; // ENUM('local', 's3')
  final Map<String, dynamic> meta; // JSONB, NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);

  Map<String, dynamic> toJson() => _$FileToJson(this);

  @override
  List<Object?> get props => [
    id,
    ownerId,
    fileName,
    filePath,
    mimeType,
    fileSize,
    width,
    height,
    durationMs,
    checksum,
    storage,
    meta,
    createdAt,
    updatedAt,
  ];

  File copyWith({
    String? id,
    String? ownerId,
    String? fileName,
    String? filePath,
    String? mimeType,
    int? fileSize,
    int? width,
    int? height,
    int? durationMs,
    String? checksum,
    StorageType? storage,
    Map<String, dynamic>? meta,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return File(
      id: id ?? this.id,
      ownerId: ownerId ?? this.ownerId,
      fileName: fileName ?? this.fileName,
      filePath: filePath ?? this.filePath,
      mimeType: mimeType ?? this.mimeType,
      fileSize: fileSize ?? this.fileSize,
      width: width ?? this.width,
      height: height ?? this.height,
      durationMs: durationMs ?? this.durationMs,
      checksum: checksum ?? this.checksum,
      storage: storage ?? this.storage,
      meta: meta ?? this.meta,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
