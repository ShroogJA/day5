import 'dart:io';

import 'user.dart';

main() {
  User u = User(title: "amel", description: "18/12/2000");
  User u1 = User(title: "shroog", description: "shroog name");
  User u3 = User(title: "abrar", description: "abrar name");
  u.add();
  u1.add();
  u3.add();
  u.veiw();
  stdout.write("enter name you need delete:");
  String name = stdin.readLineSync()!;
  u.remove(name);
  u.veiw();
}
