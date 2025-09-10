import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contact.g.dart';

enum ContactStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('accepted')
  accepted,
  @JsonValue('blocked')
  blocked,
}

@JsonSerializable()
class Contact extends Equatable {
  const Contact({
    required this.id,
    required this.userId,
    required this.contactId,
    required this.status,
    required this.isFavorite,
    this.nickname,
    this.note,
    required this.tags,
    this.addedBy,
    this.lastInteractionAt,
    this.confirmedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  @JsonKey(name: 'contact_id')
  final String contactId; // UUID, REFERENCES users(id)
  final ContactStatus status; // ENUM('pending', 'accepted', 'blocked')
  @JsonKey(name: 'is_favorite')
  final bool isFavorite; // BOOLEAN, NOT NULL
  final String? nickname; // VARCHAR(255)
  final String? note; // TEXT
  final List<String> tags; // TEXT[], NOT NULL
  @JsonKey(name: 'added_by')
  final String? addedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'last_interaction_at')
  final DateTime? lastInteractionAt; // TIMESTAMPTZ
  @JsonKey(name: 'confirmed_at')
  final DateTime? confirmedAt; // TIMESTAMPTZ
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  Map<String, dynamic> toJson() => _$ContactToJson(this);

  @override
  List<Object?> get props => [
    id,
    userId,
    contactId,
    status,
    isFavorite,
    nickname,
    note,
    tags,
    addedBy,
    lastInteractionAt,
    confirmedAt,
    createdAt,
    updatedAt,
  ];

  Contact copyWith({
    String? id,
    String? userId,
    String? contactId,
    ContactStatus? status,
    bool? isFavorite,
    String? nickname,
    String? note,
    List<String>? tags,
    String? addedBy,
    DateTime? lastInteractionAt,
    DateTime? confirmedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Contact(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      contactId: contactId ?? this.contactId,
      status: status ?? this.status,
      isFavorite: isFavorite ?? this.isFavorite,
      nickname: nickname ?? this.nickname,
      note: note ?? this.note,
      tags: tags ?? this.tags,
      addedBy: addedBy ?? this.addedBy,
      lastInteractionAt: lastInteractionAt ?? this.lastInteractionAt,
      confirmedAt: confirmedAt ?? this.confirmedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
