import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_attachment.g.dart';

@JsonSerializable()
class EventAttachment extends Equatable {
  const EventAttachment({
    required this.id,
    required this.eventId,
    required this.fileId,
    required this.createdAt,
  });

  final String id; // UUID
  @JsonKey(name: 'event_id')
  final String eventId; // UUID, REFERENCES events(id)
  @JsonKey(name: 'file_id')
  final String fileId; // UUID, REFERENCES files(id)
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL

  factory EventAttachment.fromJson(Map<String, dynamic> json) =>
      _$EventAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$EventAttachmentToJson(this);

  @override
  List<Object?> get props => [id, eventId, fileId, createdAt];

  EventAttachment copyWith({
    String? id,
    String? eventId,
    String? fileId,
    DateTime? createdAt,
  }) {
    return EventAttachment(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      fileId: fileId ?? this.fileId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
