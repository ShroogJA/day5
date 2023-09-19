import 'Account.dart';
import 'AccountManagement.dart';

class Saving extends Acount implements AccountManagment {
  late double inters = 1.25;
  late double x;
  Saving(int id, double balance) : super(id, balance);

  @override
  void deposit(double deposit) {
    balance += deposit;
  }

  @override
  void withdraw(double withdraw) {
    if (balance - withdraw <= -1000) {
      balance -= withdraw;
    }
    print("*****");
  }


  @override
  void interset() {
    x = balance / inters;
     print("overdaraftlimit:$x");
  }
}
