import 'enduser.dart';

class Employee extends Enduser  {
 Employee(
      {required String name, required String mobile, required String idNo,required String gender})
      : super(name: name, mobile: mobile, idNo: idNo,gender: gender);

  @override
  void displayinfo(String s) {
    // TODO: implement displayinfo
  }
}
