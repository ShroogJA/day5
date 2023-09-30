import 'observer.dart';

class Person implements Observer {
  late String name;
  Person({required this.name});
  @override
  update(String massege, DateTime date) {
    print("[${date.toString()}]Hey $name,$massege");
  }
}
