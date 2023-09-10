import 'dart:io';

main() {
  stdout.write("enter any number  : ");
  var y = int.parse(stdin.readLineSync()!);
  int x;
  if (y % 2 == 0) {
    x = y + 10;
    for (int i = y + 2; i <= x; i++) {
      if (i % 2 == 0) {
        print("The even number : $i");
      }
    }
  }
  if (y % 2 == 1) {
    x = y + 10;
    for (int i = y + 1; i <= x; i++) {
      if (i % 2 == 0) {
        print("The even number : $i");
      }
    }
  }
}
