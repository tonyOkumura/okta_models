import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_log.g.dart';

@JsonSerializable()
class TaskLog extends Equatable {
  const TaskLog({
    required this.id,
    required this.taskId,
    required this.action,
    this.oldValue,
    this.newValue,
    this.changedBy,
    required this.changedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'task_id')
  final String taskId; // UUID, REFERENCES tasks(id)
  final String action; // VARCHAR(100), NOT NULL
  @JsonKey(name: 'old_value')
  final Map<String, dynamic>? oldValue; // JSONB
  @JsonKey(name: 'new_value')
  final Map<String, dynamic>? newValue; // JSONB
  @JsonKey(name: 'changed_by')
  final String? changedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'changed_at')
  final DateTime changedAt; // TIMESTAMPTZ, NOT NULL

  factory TaskLog.fromJson(Map<String, dynamic> json) =>
      _$TaskLogFromJson(json);

  Map<String, dynamic> toJson() => _$TaskLogToJson(this);

  @override
  List<Object?> get props => [
    id,
    taskId,
    action,
    oldValue,
    newValue,
    changedBy,
    changedAt,
  ];

  TaskLog copyWith({
    String? id,
    String? taskId,
    String? action,
    Map<String, dynamic>? oldValue,
    Map<String, dynamic>? newValue,
    String? changedBy,
    DateTime? changedAt,
  }) {
    return TaskLog(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      action: action ?? this.action,
      oldValue: oldValue ?? this.oldValue,
      newValue: newValue ?? this.newValue,
      changedBy: changedBy ?? this.changedBy,
      changedAt: changedAt ?? this.changedAt,
    );
  }
}
