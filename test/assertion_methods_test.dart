import 'package:flutter_test/flutter_test.dart';

void main() {
  group('アサーションメソッドのサンプル', () {
    test('equalsの使用例', () {
      expect(1 + 1, equals(2));
    });

    test('isTrueとisFalseの使用例', () {
      expect(3 > 2, isTrue);
      expect(2 > 3, isFalse);
    });
  });
}
