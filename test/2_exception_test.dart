import 'package:flutter_test/flutter_test.dart';

void main() {
  group('例外のテスト', () {
    test('throwsAの使用例', () {
      expect(() => throw Exception('エラー'), throwsA(isA<Exception>()));
    });

    test('特定の例外クラスのテスト', () {
      expect(() => throw FormatException(), throwsFormatException);
    });
  });
}
