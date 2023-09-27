import 'dart:io';

import 'Car.dart';

enum CarType { CITY_CAR, SPORTS_CAR }

enum Category { MANUAL, AUTOMATIC }

void main() {
  
  Car car = Buildcar(seats: 4, Cartype: CarType.CITY_CAR)
      .setcategory(Category.MANUAL)
      .setgpsNavigator(false)
      .setgpsNavigator(true)
      .Build();

  car.printfunction();
}
