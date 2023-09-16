import 'dart:io';

main() {
  listbook books = new listbook();
  books.ViewBooks();
  books.RemoveBook();
}

class listbook {
  List<Map<String, dynamic>> book = [
    {
      "id": 450,
      "name": "Book 1",
      "author": "Mike X",
      "category": ["Science", "Development"],
      "price": 30.5,
      "quantity": 2
    },
    {
      "id": 451,
      "name": "Book 2",
      "author": "Jad Y",
      "category": ["Horror", "Crime"],
      "price": 47.5,
      "quantity": 0
    },
    {
      "id": 452,
      "name": "Book 3",
      "author": "Michel Z",
      "category": ["Horror", "Comic"],
      "price": 17,
      "quantity": 4
    },
    {
      "id": 453,
      "name": "Book 4",
      "author": "Michel Z",
      "category": ["Comic"],
      "price": 24.7,
      "quantity": 10
    },
    {
      "id": 454,
      "name": "Book 5",
      "author": "Jad Y",
      "category": ["Horror", "Crime"],
      "price": 13,
      "quantity": 13
    },
    {
      "id": 455,
      "name": "Book 6",
      "author": "",
      "category": ["Fantasy", "Humor", "Comic"],
      "price": 27,
      "quantity": 5
    }
  ];
  void ViewBooks() {
    String state = "";
    book.forEach((element) {
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

  void RemoveBook() {
    stdout.write("Enter book id: ");
    int id = int.parse(stdin.readLineSync()!);
    book.removeAt(id);
    print("Successfully Removed, remaining ${book[id]}");
  }
  void AddBook() {
  stdout.write("Enter book name: ");
  String name = stdin.readLineSync()!;
  book.forEach((element) {
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
  book.add(newline);
  print("Successfully Added,");
}
void SearchBooks() {
  stdout.write("Enter Your Search Word (Name / Category): ");
  String search = stdin.readLineSync()!;
  book
      .where((element) =>
          element["name"].contains(search) ||
          element["category"].contains(search))
      .toList();
}
}

//   area() {
//     double areaw;
//     //areaw = length * width;
//     print("\n the aree=${areaw} \n");
//   }

//   calculate() {
//     double calculate;
//     calculate = 2 * (length + width);
//     print("\n the aree=${calculate} \n");
//   }
// }

// class shoppingcard {0
//   late double length;
//   late double width;

//   Rectangle() {
//     length = 16.0;
//     width = 12.5;
//   }

//   area() {
//     double areaw;
//     areaw = length * width;
//     print("\n the aree=${areaw} \n");
//   }

//   calculate() {
//     double calculate;
//     calculate = 2 * (length + width);
//     print("\n the aree=${calculate} \n");
//   }
// }
