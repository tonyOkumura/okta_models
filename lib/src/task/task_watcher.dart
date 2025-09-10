import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_watcher.g.dart';

@JsonSerializable()
class TaskWatcher extends Equatable {
  const TaskWatcher({
    required this.taskId,
    required this.userId,
    required this.addedAt,
  });

  @JsonKey(name: 'task_id')
  final String taskId; // UUID, REFERENCES tasks(id)
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'added_at')
  final DateTime addedAt; // TIMESTAMPTZ, NOT NULL

  factory TaskWatcher.fromJson(Map<String, dynamic> json) =>
      _$TaskWatcherFromJson(json);

  Map<String, dynamic> toJson() => _$TaskWatcherToJson(this);

  @override
  List<Object?> get props => [taskId, userId, addedAt];

  TaskWatcher copyWith({String? taskId, String? userId, DateTime? addedAt}) {
    return TaskWatcher(
      taskId: taskId ?? this.taskId,
      userId: userId ?? this.userId,
      addedAt: addedAt ?? this.addedAt,
    );
  }
}
