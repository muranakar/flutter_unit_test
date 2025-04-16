import 'package:flutter_test/flutter_test.dart';

void main() {
  group('コレクション関連のマッチャー', () {
    test('containsの使用例', () {
      final list = [1, 2, 3];
      expect(list, contains(2));
    });

    test('hasLengthの使用例', () {
      final list = [1, 2, 3];
      expect(list, hasLength(3));
    });
  });
}
