import 'dart:math';

import 'Invoices.dart';
import 'Medicines.dart';
import 'catogory.dart';
import 'clinet.dart';
import 'pharmacist.dart';
import 'search.dart';
import 'suppliers.dart';

main() {
  // التعريف
  Invoic i = Invoic();
  i.quantit = 3;
  i
  List<Client> allclient = List.generate(
      4,
      (index) => Client(
          name: "shroog${index + 1} ",
          mobile: "7774256772",
          address: 'adress${index + 1}',
          birthDate: '7/8/1999'));
  List<Categorie> allcate =
      List.generate(4, (index) => Categorie(name: "Category${index + 1} "));
  List<Supplier> allsupli = List.generate(
      4,
      (index) => Supplier(
          name: "Supplier${index + 1}",
          mobile: "781182083",
          companyName: "company${index + 1}"));
  List<Pharmacist> allphram = List.generate(
      4,
      (index) => Pharmacist(
          name: "Pharmacist${index + 1}",
          mobile: "798456345",
          salary: 500 * index * 1));
  List<Medicines> allmedicines = List.generate(
      4,
      (Index) => Medicines(
          name: "Madicien${Index + 1}",
          unitPrice: 456 * Index + 1,
          expireDate: "12/4/2014",
          cat: allcate[Index],
          suup: allsupli[Index]));
  Search<Medicines> med = Search();
  List<Medicines?> searcmed = med.searchna(allmedicines, "4");
  print(searcmed);

  //العرض
  print(
      "_______________________________________________________________________\n");
  allcate.forEach((element) {
    element.displayinfo();
  });
  print(
      "_______________________________________________________________________\n");
  allsupli.forEach((element) {
    int id = Random().nextInt(1000) + 1;
    element.displayinfo(id);
  });
  print(
      "_______________________________________________________________________\n");
  allphram.forEach((element) {
    int id = Random().nextInt(1000) + 1;
    element.displayinfo(id);
  });
  print(
      "_______________________________________________________________________\n");
  print(
      "_______________________________________________________________________\n");
  allclient.forEach((element) {
    int id = Random().nextInt(1000) + 1;
    element.displayinfo(id);
  });
  print(
      "_______________________________________________________________________\n");
  print(
      "_______________________________________________________________________\n");
  allmedicines.forEach((element) {
    int id = Random().nextInt(1000) + 1;
    element.displayinfo(id);
  });
  print(
      "_______________________________________________________________________\n");
}
