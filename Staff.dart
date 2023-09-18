import 'abstrclass.dart';

class Staff extends Person {
  late String _school;
  late double _pay;
  Staff(String name, String address, this._school, this._pay)
      : super(name, address);
  set school(String school) {
    this._school = school;
  }

  String get school => _school;
  set pay(double pay) {
    this._pay = pay;
  }

  double get pay => _pay;

  @override
  String toString() {
    return "super.toString() + ,'$_school' + ,'$_pay'";
  }
}
