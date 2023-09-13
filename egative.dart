
// 2) Write function that accept the user age as a required named
//  parameter. if the passed age under 0 just throw an exception and 
//  display message that says : “Age Can’t be Negative”
import 'dart:io';

 


//The function checks whether the age entered by the user 
//in the main function is less than zero
void age({required int age}) {
  if (age <= 0) {
    //If the age is smaller, move it to a catch function 
    throw Exception("Age can't be Zero or negative");
  } else {
    print("Age is valid");
  }
}

// Example usage:
main() {
  try {
    stdout.write("enter your age: ");
    var userAge = int.parse(stdin.readLineSync()!);
    //called
 age(age: userAge);
  } catch (e) {
    print("an error :$e");
  }
}
