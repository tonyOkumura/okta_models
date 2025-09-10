import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_attachment.g.dart';

@JsonSerializable()
class TaskAttachment extends Equatable {
  const TaskAttachment({
    required this.id,
    required this.taskId,
    required this.fileId,
    required this.createdAt,
  });

  final String id; // UUID
  @JsonKey(name: 'task_id')
  final String taskId; // UUID, REFERENCES tasks(id)
  @JsonKey(name: 'file_id')
  final String fileId; // UUID, REFERENCES files(id)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL

  factory TaskAttachment.fromJson(Map<String, dynamic> json) =>
      _$TaskAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$TaskAttachmentToJson(this);

  @override
  List<Object?> get props => [id, taskId, fileId, createdAt];

  TaskAttachment copyWith({
    String? id,
    String? taskId,
    String? fileId,
    DateTime? createdAt,
  }) {
    return TaskAttachment(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      fileId: fileId ?? this.fileId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
