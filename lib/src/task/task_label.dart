import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_label.g.dart';

@JsonSerializable()
class TaskLabel extends Equatable {
  const TaskLabel({
    required this.id,
    required this.name,
    this.color,
    required this.createdAt,
  });

  final String id; // UUID
  final String name; // VARCHAR(100), NOT NULL
  final String? color; // VARCHAR(20)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL

  factory TaskLabel.fromJson(Map<String, dynamic> json) =>
      _$TaskLabelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskLabelToJson(this);

  @override
  List<Object?> get props => [id, name, color, createdAt];

  TaskLabel copyWith({
    String? id,
    String? name,
    String? color,
    DateTime? createdAt,
  }) {
    return TaskLabel(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
