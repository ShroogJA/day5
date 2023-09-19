import 'Account.dart';

class Current extends Acount {
   
  Current(int id, double balance) : super(id, balance) {}

  @override
  void deposit(double deposit) {
    balance += deposit;
  }

  @override
  void withdraw(double withdraw) {
    if (balance - withdraw <= -1000) {
      balance -= withdraw;
    }
  }

 
}
