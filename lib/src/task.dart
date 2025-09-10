import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

enum TaskStatus {
  @JsonValue('open')
  open,
  @JsonValue('in_progress')
  inProgress,
  @JsonValue('on_hold')
  onHold,
  @JsonValue('done')
  done,
  @JsonValue('canceled')
  canceled,
}

@JsonSerializable()
class Task extends Equatable {
  const Task({
    required this.id,
    required this.title,
    this.description,
    required this.status,
    required this.priority,
    this.creatorId,
    this.assigneeId,
    this.startDate,
    this.dueDate,
    this.startedAt,
    this.completedAt,
    this.canceledAt,
    this.lastActivityAt,
    this.estimateHours,
    this.spentHours,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  final String title; // VARCHAR(255), NOT NULL
  final String? description; // TEXT
  final TaskStatus
  status; // ENUM('open', 'in_progress', 'on_hold', 'done', 'canceled')
  final int priority; // INTEGER, NOT NULL, CHECK (1 <= priority <= 5)
  @JsonKey(name: 'creator_id')
  final String? creatorId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'assignee_id')
  final String? assigneeId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'start_date')
  final DateTime? startDate; // DATE
  @JsonKey(name: 'due_date')
  final DateTime? dueDate; // TIMESTAMPTZ
  @JsonKey(name: 'started_at')
  final DateTime? startedAt; // TIMESTAMPTZ
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt; // TIMESTAMPTZ
  @JsonKey(name: 'canceled_at')
  final DateTime? canceledAt; // TIMESTAMPTZ
  @JsonKey(name: 'last_activity_at')
  final DateTime? lastActivityAt; // TIMESTAMPTZ
  @JsonKey(name: 'estimate_hours')
  final double? estimateHours; // NUMERIC(10,2), CHECK (estimate_hours >= 0)
  @JsonKey(name: 'spent_hours')
  final double? spentHours; // NUMERIC(10,2), CHECK (spent_hours >= 0)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    status,
    priority,
    creatorId,
    assigneeId,
    startDate,
    dueDate,
    startedAt,
    completedAt,
    canceledAt,
    lastActivityAt,
    estimateHours,
    spentHours,
    createdAt,
    updatedAt,
  ];

  Task copyWith({
    String? id,
    String? title,
    String? description,
    TaskStatus? status,
    int? priority,
    String? creatorId,
    String? assigneeId,
    DateTime? startDate,
    DateTime? dueDate,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? canceledAt,
    DateTime? lastActivityAt,
    double? estimateHours,
    double? spentHours,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
      priority: priority ?? this.priority,
      creatorId: creatorId ?? this.creatorId,
      assigneeId: assigneeId ?? this.assigneeId,
      startDate: startDate ?? this.startDate,
      dueDate: dueDate ?? this.dueDate,
      startedAt: startedAt ?? this.startedAt,
      completedAt: completedAt ?? this.completedAt,
      canceledAt: canceledAt ?? this.canceledAt,
      lastActivityAt: lastActivityAt ?? this.lastActivityAt,
      estimateHours: estimateHours ?? this.estimateHours,
      spentHours: spentHours ?? this.spentHours,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
