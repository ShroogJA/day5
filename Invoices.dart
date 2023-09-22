import 'catogory.dart';

class Invoic {
  late int _quantity;
  late double _price;
  late double _total;
  late Categorie cat;
  set quantit(int q) {
    _quantity = q;
  }

  set price(double w) {
    _price = w;
  }

  int get quantit {
    return _quantity;
  }

  double get price {
    return _price;
  }

  void total() {
    print(_price * _quantity);
  }
}
