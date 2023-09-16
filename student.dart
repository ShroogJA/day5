import 'dart:io';

main() {
  List<Student> std = [
    Student("Ali", "it", 20),
    Student("shroog", "cs", 21),
    Student("ahmed", "it", 22),
    Student("salem", "cs", 21),
    Student("fatma", "it", 20)
  ];

  var majorr = '';
  while (majorr != "e") {
    stdout.write("enter major :");
    majorr = stdin.readLineSync()!;
    for (int i = 0; i < std.length; i++) {
      if (std[i].major == majorr) {
        print(std[i].showstudent());
      }
    }
  }
}

class Student {
  late String name;
  late String major;
  late int age;
  Student(String n, String maj, int a) {
    name = n;
    major = maj;
    age = a;
  }
  showstudent() {
    print("the student name :${name} ,age :${age} ,major : ${major}");
  }
}
