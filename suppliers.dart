import 'person.dart';

class Supplier extends Person {
  late String companyName;
  Supplier ({required String name , required String mobile,required this.companyName}) :
   super(name: name,mobile: mobile);

  @override
  void displayinfo(int id) {
    print("ID:${id} ,name:${name}  mobile:${mobile}  company:${companyName} ");
  }
}