import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

enum UserRole {
  @JsonValue('user')
  user,
  @JsonValue('moderator')
  moderator,
  @JsonValue('admin')
  admin,
}

@JsonSerializable()
class User extends Equatable {
  const User({
    required this.id,
    this.username,
    this.email,
    this.phone,
    required this.password,
    this.passwordChangedAt,
    this.emailVerifiedAt,
    this.phoneVerifiedAt,
    this.displayName,
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.avatarUrl,
    this.bio,
    this.statusMessage,
    required this.isOnline,
    this.lastLoginAt,
    this.lastSeenAt,
    required this.isActive,
    this.deactivatedAt,
    required this.locale,
    required this.timezone,
    required this.twoFactorEnabled,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id; // UUID
  final String? username; // VARCHAR(255), UNIQUE, 3-50 chars
  final String? email; // VARCHAR(255), UNIQUE
  final String? phone; // VARCHAR(30), UNIQUE
  final String password; // VARCHAR(255), NOT NULL
  @JsonKey(name: 'password_changed_at')
  final DateTime? passwordChangedAt; // TIMESTAMPTZ
  @JsonKey(name: 'email_verified_at')
  final DateTime? emailVerifiedAt; // TIMESTAMPTZ
  @JsonKey(name: 'phone_verified_at')
  final DateTime? phoneVerifiedAt; // TIMESTAMPTZ
  @JsonKey(name: 'display_name')
  final String? displayName; // VARCHAR(255)
  @JsonKey(name: 'first_name')
  final String? firstName; // VARCHAR(100)
  @JsonKey(name: 'last_name')
  final String? lastName; // VARCHAR(100)
  @JsonKey(name: 'date_of_birth')
  final DateTime? dateOfBirth; // DATE
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl; // TEXT
  final String? bio; // TEXT
  @JsonKey(name: 'status_message')
  final String? statusMessage; // VARCHAR(255)
  @JsonKey(name: 'is_online')
  final bool isOnline; // BOOLEAN, NOT NULL
  @JsonKey(name: 'last_login_at')
  final DateTime? lastLoginAt; // TIMESTAMPTZ
  @JsonKey(name: 'last_seen_at')
  final DateTime? lastSeenAt; // TIMESTAMPTZ
  @JsonKey(name: 'is_active')
  final bool isActive; // BOOLEAN, NOT NULL
  @JsonKey(name: 'deactivated_at')
  final DateTime? deactivatedAt; // TIMESTAMPTZ
  final String locale; // VARCHAR(10), NOT NULL
  final String timezone; // TEXT, NOT NULL
  @JsonKey(name: 'two_factor_enabled')
  final bool twoFactorEnabled; // BOOLEAN, NOT NULL
  final UserRole role; // ENUM('user', 'moderator', 'admin')
  @JsonKey(name: 'created_at')
  final DateTime createdAt; // TIMESTAMPTZ, NOT NULL
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt; // TIMESTAMPTZ, NOT NULL

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [
    id,
    username,
    email,
    phone,
    password,
    passwordChangedAt,
    emailVerifiedAt,
    phoneVerifiedAt,
    displayName,
    firstName,
    lastName,
    dateOfBirth,
    avatarUrl,
    bio,
    statusMessage,
    isOnline,
    lastLoginAt,
    lastSeenAt,
    isActive,
    deactivatedAt,
    locale,
    timezone,
    twoFactorEnabled,
    role,
    createdAt,
    updatedAt,
  ];

  User copyWith({
    String? id,
    String? username,
    String? email,
    String? phone,
    String? password,
    DateTime? passwordChangedAt,
    DateTime? emailVerifiedAt,
    DateTime? phoneVerifiedAt,
    String? displayName,
    String? firstName,
    String? lastName,
    DateTime? dateOfBirth,
    String? avatarUrl,
    String? bio,
    String? statusMessage,
    bool? isOnline,
    DateTime? lastLoginAt,
    DateTime? lastSeenAt,
    bool? isActive,
    DateTime? deactivatedAt,
    String? locale,
    String? timezone,
    bool? twoFactorEnabled,
    UserRole? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      passwordChangedAt: passwordChangedAt ?? this.passwordChangedAt,
      emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
      phoneVerifiedAt: phoneVerifiedAt ?? this.phoneVerifiedAt,
      displayName: displayName ?? this.displayName,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      bio: bio ?? this.bio,
      statusMessage: statusMessage ?? this.statusMessage,
      isOnline: isOnline ?? this.isOnline,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
      lastSeenAt: lastSeenAt ?? this.lastSeenAt,
      isActive: isActive ?? this.isActive,
      deactivatedAt: deactivatedAt ?? this.deactivatedAt,
      locale: locale ?? this.locale,
      timezone: timezone ?? this.timezone,
      twoFactorEnabled: twoFactorEnabled ?? this.twoFactorEnabled,
      role: role ?? this.role,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
