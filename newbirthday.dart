import 'dart:convert';
import 'dart:io';

//import 'birthday.dart';
enum Month {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December
}
void main() async {
  File f = new File("informaiction.json");
  String content = await f.readAsStringSync();
  List<Map<String, dynamic>> brithday =
      jsonDecode(content).cast<Map<String, dynamic>>();
  ;
  print(brithday);

  print("Welcome to the birthday Program. We know the birthdays of:");
  brithday.forEach((element) {
    element.forEach((key, value) {
      if (key == "name") {
        print(value);
      }
    });
  });

  String filter = '';
  while (filter != 'q') {
    stdout.write("Who's birthday do you want to look up? (Enter 'q' to quit) ");
    filter = stdin.readLineSync()!.toLowerCase();

    if (filter == 'q') {
      break;
    }
    bool found = false;
    brithday.forEach((element) {
      String name = element['name'].toString().toLowerCase();
      String searchName = filter.toLowerCase();

      if (name.contains(searchName)) {
        print("${element['name']}'s birthday is ${element['birthday']}");
        found = true;
      }
    });

    if (!found) {
      print("Sorry, we couldn't find a birthday for $filter.");
    }
  }
  stdout.write("Enter a name to add to the list (or 'q' to quit): ");
  String newname = stdin.readLineSync()!;
  if (newname.toLowerCase() == 'q') {
    return;
  }
  stdout.write("Enter their birthday: ");
  String newbirthday = stdin.readLineSync()!;

  Map<String, dynamic> newline = {'name': newname, 'birthday': newbirthday};
  brithday.add(newline);

  File file = File('informaiction.json');
  file.writeAsStringSync(jsonEncode(brithday));
  print(brithday);
}
