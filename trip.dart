import 'dart:math';

import 'attict.dart';
import 'interfaceshow.dart';
import 'transfordmethod.dart';

class Trip implements Dataopration {
  late String idNO, from, to, date;
  late int cost;
  late int seatav;

  Trip(
      {required this.idNO,
      required this.from,
      required this.to,
      required this.date,
      required this.cost,
      required this.seatav,
      required this.method});
  late Transportmethod method;
  List<Ticket> triptike = [];

  @override
  void displayinfo(String s) {
    seatav = seatav - triptike.length;
    for (int i = 0; i < triptike.length; i++) {
      triptike[i].num = Random().nextInt(1000000) + 1;
      if (s == triptike[i].ticketNo) {
        print("Ticket information :");
        print(
            "ID:${triptike[i].num} passenger name : ${triptike[i].passenger.name}the Ticketno:${triptike[i].ticketNo}from:${from} to${to} \n  Ticket seat: ${triptike[i].seatNo}the date trip : ${date} the transport method:${method.brand}");
      }
      if (s == triptike[i].passenger.name) {
        print("passenger information :");
        print(
            "passenger: ${triptike[i].passenger.name} mobile:${triptike[i].passenger.mobile}\n gender:${triptike[i].passenger.gender}  id Number :${triptike[i].passenger.idNo}");
      }
      if (s == "trip") {
        print("trip information :");
        print(
            "id trip: ${idNO} from:${from}\n to:${to}  a seatsAvailable: ${seatav} the date trip:${date} transport method: ${method.brand}");
      }
    }
  }
}
