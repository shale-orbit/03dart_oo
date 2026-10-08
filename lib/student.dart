class Student {
  final String name;
  double _score;
  Student(this.name, this._score);
  double get score => _score;
  set score(double value) {
    if (value < 0 || value > 100) throw ArgumentError('分数越界');
    _score = value;
  }
Student.fromJson(Map < String, dynamic > json)
: name = json['name'],
_score = (json['score'] as num).toDouble();
}