import 'package:flutter_test/flutter_test.dart';

void main() {
  group('文字列関連のマッチャー', () {
    test('startsWithとendsWithの使用例', () {
      final str = 'Hello, World!';
      expect(str, startsWith('Hello'));
      expect(str, endsWith('World!'));
    });

    test('containsの使用例', () {
      final str = 'Hello, World!';
      expect(str, contains(', '));
    });
  });
}
