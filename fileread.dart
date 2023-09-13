//7) Write a program to read the first 3 lines of a file.
import 'dart:io';

Future<List<String>> readThreeLines(String filename) async {
  try {
    //create file
    File f =new  File(filename);
   final lines = await f.readAsLines();
   // take three line from file and conver to list
    return lines.take(3).toList();
  } on FileSystemException {
    print('اthe file isnot found');
  } catch (e) {
    print('an error $e');
  }
  return [];
}

main() async {
  //A variable was created that saves the file path and calls the readThreeLines function 
  String filename = 'she.txt'; 
  final lines = await readThreeLines(filename);
  print('first three line :');
  // print three line
  lines.forEach((line) => print(line));
}
