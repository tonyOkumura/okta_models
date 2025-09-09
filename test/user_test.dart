import 'package:okta_models/okta_models.dart';
import 'package:test/test.dart';

void main() {
  group('User', () {
    test('json roundtrip', () {
      final user = User(
        id: 'u1',
        email: 'user@example.com',
        displayName: 'User One',
        createdAt: DateTime.utc(2024, 01, 02, 03, 04, 05),
      );

      final json = user.toJson();
      final decoded = User.fromJson(json);

      expect(decoded, equals(user));
      expect(json['id'], 'u1');
      expect(json['email'], 'user@example.com');
      expect(json['displayName'], 'User One');
      expect(json['createdAt'], '2024-01-02T03:04:05.000Z');
    });
  });
}
