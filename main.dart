import 'dart:io';

import 'attict.dart';
import 'buses.dart';
import 'hotel.dart';
import 'plane.dart';
import 'passenger.dart';
import 'trip.dart';

main() {
  List<Bus> allbuses = [];
  List<Plane> allplane = [];
  List<Trip> alltrip = [];
  Bus bus1 = Bus("Merceds", 2015, 43);
  Bus bus2 = Bus("toyota", 2014, 16);
  Plane plane1 = Plane("Merceds", 2015, 43);
  Plane plane2 = Plane("Merceds", 2015, 43);
  allbuses.add(bus1);
  allbuses.add(bus2);
  allplane.add(plane1);
  allplane.add(plane2);
  Hotel h1 = Hotel(id: 1, name: "mukaa");
  Hotel h2 = Hotel(id: 1, name: "grand");
  Passenger p = new Passenger(
      name: "shroog", mobile: "774342", idNo: "kkkrf", gender: "Famale", ho: h1);
  p.Wightlaguuge = 24;
  Passenger p1 = new Passenger(
      name: "ali", mobile: "7884949", idNo: "04848093", gender: "Male", ho: h2);
  p1.Wightlaguuge = 26;
  Trip t = new Trip(
      idNO: "1344",
      from: "TREAM",
      to: "MUKALA",
      date: "12/5/667",
      cost: 17899,
      seatav: 11,
      method: bus1);
  Trip t2 = new Trip(
      idNO: "1344",
      from: "Muklal",
      to: "seiyon",
      date: "13/5/667",
      cost: 20000,
      seatav: 40,
      method: bus2);
  Trip t3 = new Trip(
      idNO: "1344",
      from: "seiyon",
      to: "Sanaa",
      date: "13/5/667",
      cost: 20000,
      seatav: 20,
      method: plane2);
  allbuses.add(bus1);
  alltrip.add(t);
  alltrip.add(t2);
  alltrip.add(t3);

  t.triptike
      .add(Ticket(ticketNo: "1", seatNo: "12", classType: "A", passenger: p));
  t.triptike
      .add(Ticket(ticketNo: "2", seatNo: "10", classType: "B", passenger: p1));
  t2.triptike
      .add(Ticket(ticketNo: "3", seatNo: "12", classType: "A", passenger: p1));
  t3.triptike
      .add(Ticket(ticketNo: "4", seatNo: "12", classType: "A", passenger: p));
  stdout.write(
      "enter the idNumber Ticket or name passenger to display information trip:");
  var num = stdin.readLineSync()!;
  t.displayinfo(num);
  for (int i = 0; i < alltrip.length; i < i++) {
    if (alltrip[i].seatav > 10) {
      alltrip[i].displayinfo("trip");
    }
  }
  p.displayinfo("1");
  p1.displayinfo("1");
}
