import 'Staff.dart';
import 'Student.dart';

main() {
  Student std = Student("Shroog", "mukala", "java", 2.3, 2000);
  Staff sf = Staff("ali", "treem", "sdhdh", 250.1);
  print(std.toString());
  print(sf.toString());
}
