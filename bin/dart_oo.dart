import 'package:dart_oo/student.dart';
import 'package:dart_oo/gradebook.dart';

void main() {
  final data = <Map<String, dynamic>>[
    {'name': '张三', 'score': 92},
    {'name': '李四', 'score': 78},
    {'name': '王五', 'score': 55},
    {'name': '赵六', 'score': 86},
    {'name': '钱七', 'score': 100},
  ];

  final students = data.map((j) => Student.fromJson(j)).toList();
  final book = GradeBook(students);

  print('平均分: ${book.average.toStringAsFixed(2)}');
  print('最高分: ${book.maxBy.name} (${book.maxBy.score})');
  print('及格人数: ${book.countPassed()}');

  print('分档结果:');
  book.groupByGrade().forEach((grade, list) {
    final names = list.map((s) => s.name).join(', ');
    print('  $grade: $names');
  });
}
