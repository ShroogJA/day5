import 'interobserversubject.dart';
import 'observer.dart';

class ObserverMange implements Timecoffee {
  late DateTime date;
  ObserverMange({required this.date});
  List<Observer> observerall = [];
  @override
  subscribe(Observer observer) {
    observerall.add(observer);
  }

  @override
  unsubscribe(Observer observer) {
    observerall.remove(observer);
  }

  @override
  notifyAllsubscrubing() {
    for (Observer observer in observerall) {
      observer.update("coffee's done!", date);
    }
  }
}
