import 'CurrentAccount.dart';
import 'SavingsAccount.dart';
import 'bank.dart';

main() {
  Current c = Current(1, 12000);
  Saving s = Saving(2, 4566);
  Bank bank = Bank();
  bank.addAccount(c);
  bank.addAccount(s);
  bank.deposit(c, 200);
  bank.withdraw(c, 311);
}
