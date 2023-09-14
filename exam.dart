import 'dart:convert';

import 'dart:io';

File f = new File("bookdara.json");
String content = f.readAsStringSync();
List<Map<String, dynamic>> jsonContent =
    jsonDecode(content).cast<Map<String, dynamic>>();
void main() {
  var choose = ' ';
  do {
    print("\n\n********Welcome to BookStore Application**************\n");
    stdout.write(
        "1. View Books \n2. Add Book \n3. Remove Book \n4. Search Books \n5. Add To Shopping Cart\n 6. Manage Shopping Cart \n7. Confirm Payment \n8. Check Your Balance \n9. Get Details of One book \nq. Exit\n\n");

    print("******************************************************");
    stdout.write("choose number :");
    choose = stdin.readLineSync()!;
    switch (choose) {
      case '1':
        ViewBooks();
        break;
      case '2':
        AddBook();
        break;
      case '3':
        RemoveBook();
        break;
      case '4':
        SearchBooks();
        break;
      case '5':
        AddToShoppingCart();
        break;
      case '6':
        ManageShoppingCart();
        break;
      case '7':
        ConfirmPayment();
        break;
      case '8':
        CheckYourBalance();
        break;
      case '9':
        GetDetailsofOnebook();
        break;

      default:
        break;
    }
  } while (choose != 'q');
}

void GetDetailsofOnebook() {}

void CheckYourBalance() {}

void ConfirmPayment() {}

void ManageShoppingCart() {}

void AddToShoppingCart() {}

void SearchBooks() {
  stdout.write("Enter Your Search Word (Name / Category): ");
  String search = stdin.readLineSync()!;
  jsonContent
      .where((element) =>
          element["name"].contains(search) ||
          element["category"].contains(search))
      .toList();
}

void RemoveBook() {
  stdout.write("Enter book id: ");
  int id = int.parse(stdin.readLineSync()!);
  jsonContent.removeAt(id);
  print("Successfully Removed, remaining ${jsonContent[id]}");
}

void AddBook() {
  stdout.write("Enter book name: ");
  String name = stdin.readLineSync()!;
  jsonContent.forEach((element) {
    element.forEach((key, value) {
      if (key == "name" && value.contains(name)) {
        print("Book name exist before, Try Again");
        return;
      }
    });
  });

  stdout.write("Enter book Author ");
  String author = stdin.readLineSync()!;
  stdout.write("Enter book Quantity ");
  int quantity = int.parse(stdin.readLineSync()!);
  stdout.write("Enter book price ");
  double price = double.parse(stdin.readLineSync()!);
  stdout.write("Enter book category ");
  List<String> category = stdin.readLineSync()!.split(',');
  category.toString();

  Map<String, dynamic> newline = {
    "name": name,
    "author": author,
    "category": category,
    "price": price,
    "quantity": quantity
  };
  jsonContent.add(newline);
  print("Successfully Added,");
}

void ViewBooks() {
  String state = "";
  jsonContent.forEach((element) {
    element.forEach((key, value) {
      if (key == "quantity" && value == 0) {
        state = "Sold Out";
      } else {
        state = "Available";
      }
    });

    stdout.write(
        "[${element['name']}] (${element['id']})--Author:${element['author']},Quantity:${element['quantity']},Price:${element['price']},Category:${element['category']},State :${state} \n");
  });
}
