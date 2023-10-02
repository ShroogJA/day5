import 'dart:io';

import 'person.dart';

void main() {
  stdout.write("enter person first name : ");
  String firstname = stdin.readLineSync()!;
  stdout.write("enter person last name : ");
  String lasttname = stdin.readLineSync()!;
  stdout.write("enter person age : ");
  int age = int.parse(stdin.readLineSync()!);
  stdout.write("enter person profession : ");
  String profession = stdin.readLineSync()!;
  
  List<String> hobbies = [];
  // stdout.write("enter person hobbies : ");
  // hobbies.forEach((element) {
  //    if(element.length<4)
  //   element=stdin.readLineSync()!;

  // });
  Person p = BuilderPerson(firstname: firstname, lastname: lasttname)
      .setage(age)
      .setprofession(profession)
      .sethobbies(hobbies)
      .Build();
  p.displayinfo();
}
