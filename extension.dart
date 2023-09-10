import 'dart:io';
import 'package:split/split.dart';

main() {
  stdout.write("enter the string  : ");
  var y = stdin.readLineSync();

  List<String> chars = y.split('');
  String fileExtension = part.last;
  print(fileExtension);
}
