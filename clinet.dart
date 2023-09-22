import 'mixin.dart';
import 'person.dart';

class Client extends Person with person_more_operation {
  late String address;
  late String birthDate;
  late String registeredFrom;
  Client(
      {required String name,
      required String mobile,
      required this.address,
      required this.birthDate})
      : super(name: name, mobile: mobile);

  @override
  void displayinfo(int id) {
    
    print("ID:${id} name:${name}  mobile:${mobile}  address:${address}  birthday:${birthDate}");
  }
}
