import 'dart:io';
import 'dart:math';

main() {
  var r = Random();
  var x = r.nextInt(20);

  var ch;
  while (ch != "e") {
    stdout.write("enter any number  : ");
    var y = int.parse(stdin.readLineSync()!);
    if (y > x) {
      print("NO,big");
    }
    if (y < x) {
      print("NO,small");
    }
    if (y == x) {
      print("good,the same number");
    }
    print("enter e you need program ");
    ch = stdin.readLineSync();
  }
}
