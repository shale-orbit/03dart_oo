import 'student.dart';

mixin Logger {
  void log(String msg) => print('[$runtimeType] $msg');
}

class GradeBook with Logger {
  final List<Student> _students;

  GradeBook(this._students) {
    log('GradeBook 创建完成, 学生数: ${_students.length}');
  }

  // 平均分
  double get average =>
      _students.map((s) => s.score).reduce((a, b) => a + b) / _students.length;

  // 最高分
  Student get maxBy =>
      _students.reduce((curr, next) => curr.score > next.score ? curr : next);

  // 及格人数
  int countPassed() => _students.where((s) => s.score >= 60).length;

  // 按优良中差分档返回 Map
  Map<String, List<Student>> groupByGrade() {
    final result = _students.fold<Map<String, List<Student>>>({}, (acc, s) {
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
    log('分档完成: ${result.keys}');
    return result;
  }

  //求及格学生中分数前三名的名字排行
String passedRank() {
  final sorted = _students.toList()
    ..sort((a, b) => b.score.compareTo(a.score)); 
  return sorted
      .where((s) => s.score >= 60)                                    
      .take(3)                                                        
      .map((s) => '${s.name}(${s.score.toStringAsFixed(0)})')      
      .toList()
      .join('、');                                                  
}
}
