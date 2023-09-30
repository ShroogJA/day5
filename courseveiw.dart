import 'dart:io';

import 'course.dart';
import 'coursecontroller.dart';

class CoursetView {
  Controllercourse controllerc = Controllercourse();
  List<Course> courses = [
    Course(name: "java", hour: 20, fees: 4000),
    Course(name: "C++", hour: 10, fees: 9000),
    Course(name: "Dart", hour: 30, fees: 8000)
  ];
  

  addnewcourse() {
    controllerc.addcourssesmain(courses);
    stdout.write("enter name Cours your add:");
    var coursename = stdin.readLineSync()!;
    stdout.write("enter hour Cours your add:");
    var houre = int.parse(stdin.readLineSync()!);
    stdout.write("enter fees Cours your add:");
    var fees = double.parse(stdin.readLineSync()!);
    controllerc.addcourse(Course(name: coursename, hour: houre, fees: fees));
  }

  displaycourse() {
    stdout.write(
        "enter a you are print all student || enter student name you need veiw:");
    var name = stdin.readLineSync()!;
    controllerc.displaycourse(name);
  }
  removecourse() {
    stdout.write(
        "enter a you are print all student || enter student name you need veiw:");
    var name = stdin.readLineSync()!;
    controllerc.removecourse(name);
  }

}
