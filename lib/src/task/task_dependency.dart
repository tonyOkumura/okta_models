import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_dependency.g.dart';

@JsonSerializable()
class TaskDependency extends Equatable {
  const TaskDependency({required this.taskId, required this.dependsOnTaskId});

  @JsonKey(name: 'task_id')
  final String taskId; // UUID, REFERENCES tasks(id)
  @JsonKey(name: 'depends_on_task_id')
  final String dependsOnTaskId; // UUID, REFERENCES tasks(id)

  factory TaskDependency.fromJson(Map<String, dynamic> json) =>
      _$TaskDependencyFromJson(json);

  Map<String, dynamic> toJson() => _$TaskDependencyToJson(this);

  @override
  List<Object?> get props => [taskId, dependsOnTaskId];

  TaskDependency copyWith({String? taskId, String? dependsOnTaskId}) {
    return TaskDependency(
      taskId: taskId ?? this.taskId,
      dependsOnTaskId: dependsOnTaskId ?? this.dependsOnTaskId,
    );
  }
}
