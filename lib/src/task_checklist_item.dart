import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_checklist_item.g.dart';

@JsonSerializable()
class TaskChecklistItem extends Equatable {
  const TaskChecklistItem({
    required this.id,
    required this.taskId,
    required this.content,
    required this.isDone,
    required this.position,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'task_id')
  final String taskId; // UUID, REFERENCES tasks(id)
  final String content; // TEXT, NOT NULL
  @JsonKey(name: 'is_done')
  final bool isDone; // BOOLEAN, NOT NULL
  final int position; // INTEGER, NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory TaskChecklistItem.fromJson(Map<String, dynamic> json) =>
      _$TaskChecklistItemFromJson(json);

  Map<String, dynamic> toJson() => _$TaskChecklistItemToJson(this);

  @override
  List<Object?> get props => [
    id,
    taskId,
    content,
    isDone,
    position,
    createdAt,
    updatedAt,
  ];

  TaskChecklistItem copyWith({
    String? id,
    String? taskId,
    String? content,
    bool? isDone,
    int? position,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return TaskChecklistItem(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      content: content ?? this.content,
      isDone: isDone ?? this.isDone,
      position: position ?? this.position,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
