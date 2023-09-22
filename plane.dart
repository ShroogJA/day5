import 'transfordmethod.dart';

class Plane extends Transportmethod {
  Plane(String brand, int model, int seats)
      : super(brand: brand, model: model, seats: seats);

  @override
  void displayinfo(String s) {
    print("Transportmethod information :");
    print("model:${model} ,seate:${seats} the transport brand:${brand}");
  }
}
