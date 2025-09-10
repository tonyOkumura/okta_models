// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
  id: json['id'] as String,
  username: json['username'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  password: json['password'] as String,
  passwordChangedAt: json['password_changed_at'] == null
      ? null
      : DateTime.parse(json['password_changed_at'] as String),
  emailVerifiedAt: json['email_verified_at'] == null
      ? null
      : DateTime.parse(json['email_verified_at'] as String),
  phoneVerifiedAt: json['phone_verified_at'] == null
      ? null
      : DateTime.parse(json['phone_verified_at'] as String),
  displayName: json['display_name'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  dateOfBirth: json['date_of_birth'] == null
      ? null
      : DateTime.parse(json['date_of_birth'] as String),
  avatarUrl: json['avatar_url'] as String?,
  bio: json['bio'] as String?,
  statusMessage: json['status_message'] as String?,
  isOnline: json['is_online'] as bool,
  lastLoginAt: json['last_login_at'] == null
      ? null
      : DateTime.parse(json['last_login_at'] as String),
  lastSeenAt: json['last_seen_at'] == null
      ? null
      : DateTime.parse(json['last_seen_at'] as String),
  isActive: json['is_active'] as bool,
  deactivatedAt: json['deactivated_at'] == null
      ? null
      : DateTime.parse(json['deactivated_at'] as String),
  locale: json['locale'] as String,
  timezone: json['timezone'] as String,
  twoFactorEnabled: json['two_factor_enabled'] as bool,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'email': instance.email,
  'phone': instance.phone,
  'password': instance.password,
  'password_changed_at': instance.passwordChangedAt?.toIso8601String(),
  'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
  'phone_verified_at': instance.phoneVerifiedAt?.toIso8601String(),
  'display_name': instance.displayName,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'date_of_birth': instance.dateOfBirth?.toIso8601String(),
  'avatar_url': instance.avatarUrl,
  'bio': instance.bio,
  'status_message': instance.statusMessage,
  'is_online': instance.isOnline,
  'last_login_at': instance.lastLoginAt?.toIso8601String(),
  'last_seen_at': instance.lastSeenAt?.toIso8601String(),
  'is_active': instance.isActive,
  'deactivated_at': instance.deactivatedAt?.toIso8601String(),
  'locale': instance.locale,
  'timezone': instance.timezone,
  'two_factor_enabled': instance.twoFactorEnabled,
  'role': _$UserRoleEnumMap[instance.role]!,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$UserRoleEnumMap = {
  UserRole.user: 'user',
  UserRole.moderator: 'moderator',
  UserRole.admin: 'admin',
};
