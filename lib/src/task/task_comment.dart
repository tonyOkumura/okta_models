import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_comment.g.dart';

@JsonSerializable()
class TaskComment extends Equatable {
  const TaskComment({
    required this.id,
    required this.taskId,
    this.commenterId,
    required this.comment,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'task_id')
  final String taskId; // UUID, REFERENCES tasks(id)
  @JsonKey(name: 'commenter_id')
  final String? commenterId; // UUID, REFERENCES users(id)
  final String comment; // TEXT, NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory TaskComment.fromJson(Map<String, dynamic> json) =>
      _$TaskCommentFromJson(json);

  Map<String, dynamic> toJson() => _$TaskCommentToJson(this);

  @override
  List<Object?> get props => [
    id,
    taskId,
    commenterId,
    comment,
    createdAt,
    updatedAt,
  ];

  TaskComment copyWith({
    String? id,
    String? taskId,
    String? commenterId,
    String? comment,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return TaskComment(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      commenterId: commenterId ?? this.commenterId,
      comment: comment ?? this.comment,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
