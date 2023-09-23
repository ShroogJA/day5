import 'dart:io';

import 'Birthday.dart';
import 'opration.dart';

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

main() {
  List<Birthday> allbirthday = [];
  Opration o = Opration();

  Birthday i = Birthday(name: "addbook", brithday: "the boook....");
  Birthday i1 = Birthday(name: "readbook", brithday: "the boook....");
  Birthday i2 = Birthday(name: "writebook", brithday: "the boook....");
  allbirthday.add(i);
  allbirthday.add(i1);
  allbirthday.add(i2);
  o.printbirthday(allbirthday);
  print("enter name your lookfor:");
  var s = stdin.readLineSync()!;
 o. searchbirthday(allbirthday, s);
  print("enter name your remove:");
  int a = int.parse(stdin.readLineSync()!);
 o. removebirthday(allbirthday, a);
}































// print("tidy for month:");
  // for (int i = 0; i < allbirthday.length; i++) {
  //   //  int current_month=
  //   if (a == allbirthday[i].name) {
  //     allbirthday.remove(allbirthday[i]);
  //   }
  //   "the title:${allbirthday[i].name},the description:${allbirthday[i].name}";
  // }