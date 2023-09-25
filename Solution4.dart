class Item {
  final int code;
  final double price;
  final double quantity;

  Item(this.code, this.price, this.quantity);
}

class ShoppingCart {
  List<Item> cartItems = [];

  void removeFromCart(Item item) {
    if (cartItems.contains(item)) {
      cartItems.remove(item);
    }
  }

  void addToCart(Item item, List<Item> stockItems) {
    var quantityInStock =
        stockItems.where((element) => element.code == item.code).first.quantity;
    if (quantityInStock > 0) {
      cartItems.add(item);
    }
  }

  int getCartItemsCount() {
    return cartItems.length;
  }
}

class Invoice {
  void createInvoice(List<Item> cartItems) {
    double total = 0;
    for (var item in cartItems) {
      total += item.price;
    }
  }

  printInvoice(String invoice) {
    print(invoice);
  }

  sendEmail(String customerEmail) {
    //Send Email to Customer
  }
}

main() {
  List<Item> stockItems = [
    Item(123, 20.0, 5),
    Item(111, 10.5, 1),
    Item(222, 50.0, 10),
  ];
  Item I = Item(10, 38.3, 10);
  ShoppingCart shop = ShoppingCart();
  shop.addToCart(I, stockItems);
}
