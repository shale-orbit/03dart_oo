import 'student.dart';
class GradeBook{
  final List<Student> _students;
  GradeBook(this._students);
  //平均分
double get average =>
    _students.map((s) => s.score).reduce((a, b) => a + b) / _students.length;
  //最高分
Student get maxBy =>
    _students.reduce((curr, next) => curr.score > next.score ? curr : next);
    //及格人数
int countPassed() => _students.where((s) => s.score >= 60).length;
 //按优良中分档返回Map
Map<String, List<Student>> groupByGrade() {
  return _students.fold<Map<String, List<Student>>>({}, (acc, s) {
    final grade = s.score >= 90
        ? '优'
        : s.score >= 80
            ? '良'
            : s.score >= 60
                ? '中'
                : '差';
    acc.putIfAbsent(grade, () => []);
    acc[grade]!.add(s);
    return acc;
  });
}
}