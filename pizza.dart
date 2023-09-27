import 'main.dart';

class Pizza {
  late PizzaSize size;
  late List<String> toppings;

  Pizza(Buildpizza buildpizza) {
    this.size = buildpizza.size;
    this.toppings = buildpizza.toppings;
  }

  void printPizzaDescription() {
    StringBuffer description = StringBuffer(
        'A delicious ${size.toString().split('.').last} pizza covered in ');

    if (toppings.isEmpty) {
      description.write('cheese');
    } else {
      int numToppings = toppings.length;
      int count = 0;

      toppings.forEach((topping) {
        count++;
        description.write(topping);

        if (count < numToppings - 1) {
          description.write(', ');
        } else if (count == numToppings - 1) {
          description.write(', and ');
        }
      });

      if (toppings.contains('cheese')) {
        description.write('cheese');
      }
    }

    print(description.toString());
  }
}

class Buildpizza {
  PizzaSize size;
  List<String> toppings;
  Buildpizza({required this.size, required this.toppings});

  Pizza Build() {
    return Pizza(this);
  }
}
