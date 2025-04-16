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

    test('containsAllの使用例', () {
      final list = [1, 2, 3, 4];
      expect(list, containsAll([2, 4]));
    });

    test('isEmptyとisNotEmptyの使用例', () {
      expect([], isEmpty);
      expect([1, 2], isNotEmpty);
    });
  });
}
