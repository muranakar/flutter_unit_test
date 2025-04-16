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
  });
}
