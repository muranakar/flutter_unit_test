import 'package:flutter_test/flutter_test.dart';
import 'dart:async';

Future<int> fetchNumber() async {
  await Future.delayed(Duration(milliseconds: 100));
  return 42;
}

void main() {
  group('非同期テスト', () {
    test('async/awaitの使用例', () async {
      final result = await fetchNumber();
      expect(result, 42);
    });

    test('completionマッチャーの使用例', () {
      expect(fetchNumber(), completion(equals(42)));
    });

    test('Futureの検証', () async {
      Future<int> fetchNumber() async {
        await Future.delayed(Duration(milliseconds: 100));
        return 42;
      }

      await expectLater(fetchNumber(), completion(equals(42)));
    });

    test('Futureの完了値', () {
      Future<String> fetchString() async {
        await Future.delayed(Duration(milliseconds: 100));
        return 'Hello';
      }

      expect(fetchString(), completion('Hello'));
    });

    test('ストリームのテスト', () {
      final controller = StreamController<int>();

      // 値を発行
      controller.add(1);
      controller.add(2);
      controller.close();

      expect(controller.stream, emitsInOrder([1, 2, emitsDone]));
    });
  });
}
