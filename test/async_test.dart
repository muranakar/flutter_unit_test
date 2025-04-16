import 'package:flutter_test/flutter_test.dart';

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
  });
}
