import 'interfaceshow.dart';
import 'passenger.dart';

class Ticket implements Dataopration {
  late int num;
  late String ticketNo, seatNo, classType;
  late Passenger passenger;
  Ticket(
      {required this.ticketNo,
      required this.seatNo,
      required this.classType,
      required this.passenger});

  @override
  void displayinfo(String s) {
    // TODO: implement displayinfo
  }
}
