import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_label_map.g.dart';

@JsonSerializable()
class TaskLabelMap extends Equatable {
  const TaskLabelMap({required this.taskId, required this.labelId});

  @JsonKey(name: 'task_id')
  final String taskId; // UUID, REFERENCES tasks(id)
  @JsonKey(name: 'label_id')
  final String labelId; // UUID, REFERENCES task_labels(id)

  factory TaskLabelMap.fromJson(Map<String, dynamic> json) =>
      _$TaskLabelMapFromJson(json);

  Map<String, dynamic> toJson() => _$TaskLabelMapToJson(this);

  @override
  List<Object?> get props => [taskId, labelId];

  TaskLabelMap copyWith({String? taskId, String? labelId}) {
    return TaskLabelMap(
      taskId: taskId ?? this.taskId,
      labelId: labelId ?? this.labelId,
    );
  }
}
