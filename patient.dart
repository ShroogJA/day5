import 'person.dart';

class Patient extends Person {
  String _birthdate;
  String _physicianName;

  Patient(
      {required String id,
      required String firstName,
      required String lastName,
      required String birthdate,
      required String physicianName})
      : _birthdate = birthdate,
        _physicianName = physicianName,
        super(id: id, firstName: firstName, lastName: lastName) {
    if (id.length != 6) {
      print('Invalid ID');
    }
  }
  String get date {
    return _birthdate;
  }

  String tostring() {
    return "super.tostring() + ', Birthdate: $_birthdate, Physician: $_physicianName'";
  }
}
