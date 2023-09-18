class Person {
  late String _name;
  late String _address;
  Person(this._name, this._address);

  set add(String address) {
    this._address = address;
  }

  String get name => _name;

  String get add => _address;

  String toString() {
    return '$_name' + ' ,$_address';
  }
}
