import 'package:flutter_test/flutter_test.dart';

class User {
  final String name;
  final int age;

  User(this.name, this.age);

  bool isAdult() => age >= 18;

  Future<String> fetchProfile() async {
    await Future.delayed(Duration(milliseconds: 100));
    return 'Name: $name, Age: $age';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User && other.name == name && other.age == age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

void main() {
  group('Userクラスのテスト', () {
    late User adult;
    late User minor;

    setUp(() {
      adult = User('田中太郎', 30);
      minor = User('佐藤花子', 15);
    });

    test('大人かどうかの判定', () {
      expect(adult.isAdult(), isTrue);
      expect(minor.isAdult(), isFalse);
    });

    test('プロフィール取得', () async {
      expect(await adult.fetchProfile(), equals('Name: 田中太郎, Age: 30'));
    });

    test('等価性のテスト', () {
      final sameAdult = User('田中太郎', 30);
      expect(adult, equals(sameAdult));
      expect(adult, isNot(equals(minor)));
    });
  });
}
