import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/counter.dart';

void main() {
  group('カウンターのテスト', () {
    test('初期値は0であるべき', () {
      final counter = Counter();
      expect(counter.value, 0);
    });

    test('値が増加するべき', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('値が減少するべき', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}
