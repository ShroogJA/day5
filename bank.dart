import 'Account.dart';

class Bank {
  List<Acount> acounts = [];
  Bank();
  addAccount(Acount account) {
    acounts.add(account);
  }

  removeAccount(Acount account) {
    acounts.remove(account);
  }

  void deposit(Acount account, double amount) {
    account.deposit(amount);
  }

  void withdraw(Acount account, double amount) {
    account.withdraw(amount);
  }

  void printAccountBalances() {
    for (var i in acounts) {
      print("");
    }
  }
}
