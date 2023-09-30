import 'dart:io';

import 'course.dart';
import 'coursecontroller.dart';
import 'teacher.dart';

class Controllerteacher {
  Teacher modelteach = Teacher(teacname: "mohamed");
  Controllercourse controllercourse = Controllercourse();
  List<Teacher> teach = [];
  addteachermain(List<Course> courveiw) {
    courveiw.forEach((element) {
      teach.add(element as Teacher);
    });
  }

  addteacher(Teacher teach1) {
    this.teach.add(teach1);
  }

  addcourse(Teacher teach1) {
    String conditiol = "";
    controllercourse.displaycourse("all");

    do {
      stdout.write("enter course name you need add||or e");
      conditiol = stdin.readLineSync()!;
      controllercourse.courses.forEach((element) {
        if (element.name == conditiol) {
          modelteach.courseteach.add(element);
        }
      });
    } while (conditiol != "e");
  }

  displayteacher(String name) {
    if (name == "all") {
      this.teach.forEach((element) {
        print("name teacher ${element.teacname} :");
        modelteach.courseteach.forEach((element) {
          print(
              "course name:${element.name} course hour:${element.hour},course fees:${element.fees}");
        });
      });
    // } else {
    //   this.teach.forEach((element) {
    //     if (name == element.teacname) {
    //       print("course name:${element.teacname} course hour:");
    //     }
    //   });
    }
  }

  removecourse(String name) {
    this.teach.forEach((element) {
      if (element.teacname == name) {
        this.teach.remove(element);
      }
    });
  }

  // updateStudent(String name) {}
}
