import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'calendar.g.dart';

@JsonSerializable()
class Calendar extends Equatable {
  const Calendar({
    required this.id,
    required this.ownerId,
    required this.name,
    this.description,
    this.color,
    required this.timeZone,
    required this.isPrimary,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'owner_id')
  final String ownerId; // UUID, REFERENCES users(id)
  final String name; // VARCHAR(150), NOT NULL
  final String? description; // TEXT
  final String? color; // VARCHAR(20)
  @JsonKey(name: 'time_zone')
  final String timeZone; // TEXT, NOT NULL
  @JsonKey(name: 'is_primary')
  final bool isPrimary; // BOOLEAN, NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory Calendar.fromJson(Map<String, dynamic> json) =>
      _$CalendarFromJson(json);

  Map<String, dynamic> toJson() => _$CalendarToJson(this);

  @override
  List<Object?> get props => [
    id,
    ownerId,
    name,
    description,
    color,
    timeZone,
    isPrimary,
    createdAt,
    updatedAt,
  ];

  Calendar copyWith({
    String? id,
    String? ownerId,
    String? name,
    String? description,
    String? color,
    String? timeZone,
    bool? isPrimary,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Calendar(
      id: id ?? this.id,
      ownerId: ownerId ?? this.ownerId,
      name: name ?? this.name,
      description: description ?? this.description,
      color: color ?? this.color,
      timeZone: timeZone ?? this.timeZone,
      isPrimary: isPrimary ?? this.isPrimary,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
