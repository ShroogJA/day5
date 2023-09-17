import 'dart:io';

main() {
  List<listbook> books = [
    listbook("b1", 213),
    listbook("b2", 913),
    listbook("b3", 283)
  ];
  shopingcard shop = shopingcard();
  shop.additem(books.last);
  shop.additem(books[2]);
  shop.removebook(books.last);
  shop.totalprice(shop.book);
}

class listbook {
  late String name;
  late int price;
  listbook(String namebook, int pricebook) {
    name = namebook;
    price = pricebook;
  }
}

class shopingcard {
  late List<listbook> book = [];
  late int total;
  additem(listbook b) {
    book.add(b);
  }

  removebook(listbook b) {
    book.remove(b);
  }

  totalprice(List<listbook> book) {
    int totalprice = 0;
    for (var i in book) {
      totalprice = totalprice + i.price;
    }
  }
}
