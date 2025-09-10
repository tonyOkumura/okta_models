import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'calendar_member.g.dart';

enum CalendarMemberRole {
  @JsonValue('viewer')
  viewer,
  @JsonValue('editor')
  editor,
  @JsonValue('owner')
  owner,
}

@JsonSerializable()
class CalendarMember extends Equatable {
  const CalendarMember({
    required this.calendarId,
    required this.userId,
    required this.role,
    this.addedBy,
    required this.addedAt,
  });

  @JsonKey(name: 'calendar_id')
  final String calendarId; // UUID, REFERENCES calendars(id)
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  final CalendarMemberRole role; // ENUM('viewer', 'editor', 'owner')
  @JsonKey(name: 'added_by')
  final String? addedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'added_at')
  final DateTime addedAt; // TIMESTAMPTZ, NOT NULL

  factory CalendarMember.fromJson(Map<String, dynamic> json) =>
      _$CalendarMemberFromJson(json);

  Map<String, dynamic> toJson() => _$CalendarMemberToJson(this);

  @override
  List<Object?> get props => [calendarId, userId, role, addedBy, addedAt];

  CalendarMember copyWith({
    String? calendarId,
    String? userId,
    CalendarMemberRole? role,
    String? addedBy,
    DateTime? addedAt,
  }) {
    return CalendarMember(
      calendarId: calendarId ?? this.calendarId,
      userId: userId ?? this.userId,
      role: role ?? this.role,
      addedBy: addedBy ?? this.addedBy,
      addedAt: addedAt ?? this.addedAt,
    );
  }
}
