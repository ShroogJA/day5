import 'interfaceshow.dart';

abstract class Transportmethod implements Dataopration  {
  late String brand;
  late int model;
  late int seats;
  Transportmethod({required this.brand,required this.model,required this.seats}) {}
}
