import 'dart:io';

main() {
  stdout.write("Enter the first name : ");
  var firstname = stdin.readLineSync();
  stdout.write("Enter the last name : ");
  var lastname = stdin.readLineSync();

  nameoppsit(firstname, lastname);
}

void nameoppsit(var firstname, var lastname) {
  print("The revers order name :  $lastname " " $firstname");
}
