import 'package:flutter_test/flutter_test.dart';

void main() {
  group('数値関連のマッチャー', () {
    test('greaterThanとlessThanの使用例', () {
      expect(5, greaterThan(3));
      expect(3, lessThan(5));
    });

    test('greaterThanOrEqualToとlessThanOrEqualToの使用例', () {
      expect(5, greaterThanOrEqualTo(5));
      expect(3, lessThanOrEqualTo(3));
    });

    test('数値の範囲チェック', () {
      // 1 <= value < 5 の範囲
      expect(3, inClosedOpenRange(1, 5));
    });
  });
}
