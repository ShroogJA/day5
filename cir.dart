import 'dart:io';

main() {
  stdout.write("Enter the raduis circle : ");
  var raduis = double.parse(stdin.readLineSync()!);

  double resulte = circlearea(raduis);
  print("The circle area : $resulte");
}

double circlearea(double raduis) {
  double pi = 3.14;
  return (raduis * raduis * pi);
}
