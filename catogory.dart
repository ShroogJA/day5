import 'Medicines.dart';

class Categorie {
  late String name;
  Categorie({required this.name});
  void displayinfo() {
    print("name:${name}");
  }

   List<Medicines> allmedicines = [];
}
