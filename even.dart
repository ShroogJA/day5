
// 3) Write a program to create a method that takes an integer as a parameter 
// and throws an exception (Custom Exception) if the number is odd.

import 'dart:io';

void main() {
  try {
    // the user enters number
    stdout.write("Enter a number: ");
    var number = int.parse(stdin.readLineSync()!);
   // condition for checking a number if it is odd and moves it to
   // a castch  exception
    if (number % 2 != 0) {
      throw "Number is odd!";
    }
    print("Number is even.");
    ;
  } catch (e) {
    print("an error :$e");
  }
}
