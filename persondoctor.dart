class Person {
  String _id;
  String _firstName;
  String _lastName;

  Person(
      {required String id, required String firstName, required String lastName})
      : _id = id.toUpperCase(),
        _firstName = firstName,
        _lastName = lastName;

  String tostring() {
    return 'ID: $_id, Name: $_firstName $_lastName';
  }
}
