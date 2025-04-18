import 'package:flutter_test/flutter_test.dart';

void main() {
  group('テスト構造メソッドのサンプル', () {
    test('基本的なテスト', () {
      expect(1 + 1, 2);
    });

    group('ネストされたグループ', () {
      test('ネストされたテスト', () {
        expect(2 * 2, 4);
      });
    });
  });
}
