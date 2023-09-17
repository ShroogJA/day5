import 'dart:io';

main() {
  Student std = new Student(14, "ali");
  Student std2 = new Student(14, "ahmed");
  Student std3 = new Student(14, "ali", isAc: false);
  std.additem(Course("cs", 1, true));
  std.additem(Course("it", 12, true));
  std.additem(Course("ic", 23, true));
  std.additem(Course("java", 64, true));
  std.additem(Course("c++", 10, true));
  std.showcourse();

  std2.additem(Course("cs", 1, true));
  std2.additem(Course("it", 12, true));
  std2.additem(Course("ic", 23, true));
  std2.additem(Course("java", 64, false));
  std2.additem(Course("c++", 10, true));
  std.showcourse();
  std3.additem(Course("cs", 1, true));
  std3.additem(Course("it", 12, true));
  std3.additem(Course("ic", 23, false));
  std3.additem(Course("java", 64, true));
  std3.additem(Course("c++", 10, true));
  std.showcourse();

  std2.removestudent(std2.registercoursen[2]);
  std2.showcourse();
}

class Student {
  late int _no;
  late String _name;
  bool? _isActive;
  Student(int nom, String name, {bool isAc = true}) {
    this._no = nom;
    this._name = name;
    this._isActive = isAc;
  }
  late List<Course> registercoursen = [];

  additem(Course cor) {
    if (registercoursen.length < 4 && cor.isActive != false) {
      registercoursen.add(cor);
    }
  }

  showcourse() {
    registercoursen.forEach((element) {
      print(
          "course name :${element._name} number corse:${element._number},isActives ${element.isActive}");
    });
  }

  removestudent(Course cor) {
    print(registercoursen.remove(cor));
  }

  set name(String n) {
    if (n.length > 4) {
      _name = n.toUpperCase();
    } else {
      _name = n.toLowerCase();
    }
  }

  String get name {
    return _name;
  }
}

class Course {
  late String _name;
  late int _number;
  bool isActive = true;
  Course(this._name, this._number, this.isActive);
}
