import 'abstrclass.dart';

class Student extends Person {
  late String _program;
  late double _fee;
  late int _year;
  Student(String name, String address, this._program, this._fee, this._year)
      : super(name, address);

  set program(String program) {
    this._program = program;
  }

  String get program => _program;
  set fee(double fee) {
    this._fee = fee;
  }

  double get fee => _fee;

  set year(int year) {
    this._year = year;
  }

  int get year => _year;

  @override
  String toString() {
    return super.toString() + '$_program' + '$_fee';
  }
}
