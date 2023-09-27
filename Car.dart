import 'main.dart';

class Car {
  late int seats;
  late CarType Cart;
  Category? categ;
  late bool gpsNavigator;
  Car(Buildcar buildcar) {
    this.seats = buildcar.seats;
    this.Cart = buildcar.Cartype;
    this.categ = buildcar.category;
    this.gpsNavigator = buildcar.gpsNavigator;
  }
  printfunction() {
    if (gpsNavigator == true) {
      print("Functional");
    } else {
      print("N/A");
    }
  }
}

class Buildcar {
  late int seats;
  late CarType Cartype;
  Category? category;
  late bool gpsNavigator;
  Buildcar({required this.seats, required this.Cartype});
  Buildcar setcategory(Category category) {
    this.category = category;
    return this;
  }

  Buildcar setgpsNavigator(bool gpsNavigator) {
    this.gpsNavigator = gpsNavigator;
    return this;
  }

  Car Build() {
    return Car(this);
  }
}
