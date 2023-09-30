import 'observermanage.dart';
import 'person.dart';

void main() {

  final moonLanding = DateTime.parse('2000-07-20 20:18:04Z');
  Person p1 = Person(name: "Shroog");
  Person p2 = Person(name: "Tyler");
  ObserverMange mnagedate = ObserverMange(date: moonLanding);
  mnagedate.subscribe(p1);
  mnagedate.subscribe(p2);
  mnagedate.notifyAllsubscrubing();
}
