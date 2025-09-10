import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contact_group_member.g.dart';

@JsonSerializable()
class ContactGroupMember extends Equatable {
  const ContactGroupMember({
    required this.groupId,
    required this.contactId,
    this.addedBy,
    required this.addedAt,
  });

  @JsonKey(name: 'group_id')
  final String groupId; // UUID, REFERENCES contact_groups(id)
  @JsonKey(name: 'contact_id')
  final String contactId; // UUID, REFERENCES contacts(id)
  @JsonKey(name: 'added_by')
  final String? addedBy; // UUID, REFERENCES users(id)
  @JsonKey(name: 'added_at')
  final DateTime addedAt; // TIMESTAMPTZ, NOT NULL

  factory ContactGroupMember.fromJson(Map<String, dynamic> json) =>
      _$ContactGroupMemberFromJson(json);

  Map<String, dynamic> toJson() => _$ContactGroupMemberToJson(this);

  @override
  List<Object?> get props => [groupId, contactId, addedBy, addedAt];

  ContactGroupMember copyWith({
    String? groupId,
    String? contactId,
    String? addedBy,
    DateTime? addedAt,
  }) {
    return ContactGroupMember(
      groupId: groupId ?? this.groupId,
      contactId: contactId ?? this.contactId,
      addedBy: addedBy ?? this.addedBy,
      addedAt: addedAt ?? this.addedAt,
    );
  }
}
