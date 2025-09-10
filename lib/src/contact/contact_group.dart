import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contact_group.g.dart';

@JsonSerializable()
class ContactGroup extends Equatable {
  const ContactGroup({
    required this.id,
    required this.userId,
    required this.name,
    this.description,
    this.color,
    this.icon,
    required this.isFavorite,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  @JsonKey(name: 'user_id')
  final String userId; // UUID, REFERENCES users(id)
  final String name; // VARCHAR(100), NOT NULL
  final String? description; // TEXT
  final String? color; // VARCHAR(20)
  final String? icon; // VARCHAR(50)
  @JsonKey(name: 'is_favorite')
  final bool isFavorite; // BOOLEAN, NOT NULL
  @JsonKey(name: 'sort_order')
  final int sortOrder; // INTEGER, NOT NULL
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory ContactGroup.fromJson(Map<String, dynamic> json) =>
      _$ContactGroupFromJson(json);

  Map<String, dynamic> toJson() => _$ContactGroupToJson(this);

  @override
  List<Object?> get props => [
    id,
    userId,
    name,
    description,
    color,
    icon,
    isFavorite,
    sortOrder,
    createdAt,
    updatedAt,
  ];

  ContactGroup copyWith({
    String? id,
    String? userId,
    String? name,
    String? description,
    String? color,
    String? icon,
    bool? isFavorite,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ContactGroup(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      description: description ?? this.description,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      isFavorite: isFavorite ?? this.isFavorite,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
