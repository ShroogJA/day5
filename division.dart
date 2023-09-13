
// 1) When we use (~/) notation that’s mean that we 
// return integer division result. if we divided number
//  by zero we will get an exception. Try to handle it.
import 'dart:io';

main() {
  //The user enters two integer numbers
  stdout.write("enter  number one : ");
  var x = int.parse(stdin.readLineSync()!);
  stdout.write("enter  number one : ");
  var s = int.parse(stdin.readLineSync()!);
  int resulte = 0;
  //The division process occurs between the two numbers, 
  //and if it is integer,
  // the result of the division is printed
  try {
    resulte = x ~/ s;
    print("reslut the division : $resulte");
    //An error is possible if the second number is zero
  } catch (e) {
    print("an error #e");
  }
}
