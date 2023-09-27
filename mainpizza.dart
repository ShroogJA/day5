import 'pizza.dart';

enum PizzaSize { S, M, L }

void main() {
  List<String> toppings1 = ['pepperoni', 'cheese'];
  Pizza pizza1 = Buildpizza(size: PizzaSize.S, toppings: toppings1).Build();
  pizza1.printPizzaDescription();

  List<String> toppings2 = ['anchovies', 'caviar', 'diamonds', 'cheese'];
  Pizza pizza2 = Buildpizza(size: PizzaSize.M, toppings: toppings2).Build();
  pizza2.printPizzaDescription();
}
