import 'observer.dart';

abstract class Timecoffee {
  subscribe(Observer observer);
  unsubscribe(Observer observer);
  notifyAllsubscrubing();
}
