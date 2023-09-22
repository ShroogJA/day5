import 'person.dart';



class Pharmacist extends Person {
 late int salary;

  Pharmacist({required String name, required String mobile,required this.salary})
      : super(name: name, mobile: mobile);

  @override
  void displayinfo(int id) {
   print("ID:${id} ,name:${name}  mobile:${mobile}  salary:${salary} ");
  }
}
