import 'person.dart';

class Doctor extends Person {
  String _specialty;

  Doctor(
      {required String id,
      required String firstName,
      required String lastName,
      required String specialty})
      : _specialty = specialty,
        super(id: id, firstName: firstName, lastName: lastName);

  String tostring() {
    return super.tostring() + ', Specialty: $_specialty';
  }
}
