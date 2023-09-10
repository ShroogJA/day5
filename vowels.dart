import 'dart:_internal';
import 'dart:io';

main() {
  List<String> vowels = ['a', 'e', 'u', 'o', 'i'];
  stdout.write("enter any character: ");
  var s = stdin.readLineSync();
  if (vowels.contains(s.toLowerCase())) {
    print("it is vowels: $s");
  } else {
    print("it isnot vowels: $s");
  }
}
