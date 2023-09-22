import 'enduser.dart';
import 'hotel.dart';

class Passenger extends Enduser {
  late int _countlaggege;
  Passenger(
      {required String name,
      required String mobile,
      required String idNo,
      required String gender,
      required this.ho})
      : super(name: name, mobile: mobile, idNo: idNo, gender: gender);
  late Hotel ho;
  set Wightlaguuge(int num) {
    _countlaggege = num;
  }

  int get Wightlaguuge {
    return _countlaggege;
  }

  @override
  void displayinfo(String s) {
    if (mobile.startsWith("78")) {
      print("passenger mobile  :");
      print(
          "passenger: ${name} mobile:${mobile}\n gender:${gender}  id Number :${idNo}  Wightlaguuge:${_countlaggege}");
    }
    if (_countlaggege > 25) {
      print("passenger Wightlaguuge>25 :");
      print(
          "passenger: ${name} mobile:${mobile}\n gender:${gender}  id Number :${idNo}  Wightlaguuge:${_countlaggege}");
    }
  }
}
