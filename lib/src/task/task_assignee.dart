import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_assignee.g.dart';

@JsonSerializable()
class TaskAssignee extends Equatable {
  const TaskAssignee({
    required this.taskId,
    required this.userId,
    this.assignedBy,
    required this.assignedAt,
  });

  @JsonKey(name: 'task_id')
  final String taskId; // UUID, REFERENCES tasks(id)
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'assigned_by')
  final String? assignedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'assigned_at')
  final DateTime assignedAt; // TIMESTAMPTZ, NOT NULL

  factory TaskAssignee.fromJson(Map<String, dynamic> json) =>
      _$TaskAssigneeFromJson(json);

  Map<String, dynamic> toJson() => _$TaskAssigneeToJson(this);

  @override
  List<Object?> get props => [taskId, userId, assignedBy, assignedAt];

  TaskAssignee copyWith({
    String? taskId,
    String? userId,
    String? assignedBy,
    DateTime? assignedAt,
  }) {
    return TaskAssignee(
      taskId: taskId ?? this.taskId,
      userId: userId ?? this.userId,
      assignedBy: assignedBy ?? this.assignedBy,
      assignedAt: assignedAt ?? this.assignedAt,
    );
  }
}
