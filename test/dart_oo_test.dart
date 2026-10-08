import 'package:test/test.dart';
import 'package:dart_oo/student.dart';
import 'package:dart_oo/gradebook.dart';

void main() {
  // 用例 1：正常数据统计正确
  test('正常数据统计正确', () {
    final book = GradeBook([
      Student.fromJson({'name': '张三', 'score': 92}),
      Student.fromJson({'name': '李四', 'score': 78}),
      Student.fromJson({'name': '王五', 'score': 55}),
      Student.fromJson({'name': '赵六', 'score': 86}),
      Student.fromJson({'name': '钱七', 'score': 100}),
    ]);
    expect(book.average, closeTo(82.2, 0.01));
    expect(book.maxBy.name, '钱七');
    expect(book.countPassed(), 4);
    final groups = book.groupByGrade();
    expect(groups['优']?.length, 2);
    expect(groups['差']?.length, 1);
  });

  // 用例 2：越界分数抛 ArgumentError
  test('越界分数抛 ArgumentError', () {
    final s = Student('x', 50);
    expect(() => s.score = -1, throwsArgumentError);
    expect(() => s.score = 150, throwsArgumentError);
  });
}