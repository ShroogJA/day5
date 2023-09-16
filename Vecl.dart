main() {
  Vehicle ve = Vehicle("gfh", "hhfj", 2020);

  ve.showvehicle();
}

class Vehicle {
  late String brand;
  late String model;
  late int year;
  Vehicle(String brn, String x, int yea) {
    brand = brn;
    model = x;
    year = yea;
  }
  showvehicle() {
    print("the Vehicle :${brand} ,model :${model} ,year${year}");
  }
}
