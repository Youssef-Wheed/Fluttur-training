import 'Account.dart';
import 'Transaction.dart';
import 'Rollback.dart';

class Withdraw extends Transaction implements Rollback {
  double amount;

  Withdraw({
    required int transactionId,
    required this.amount,
  }) : super(transactionId: transactionId);

  @override
  double execute(Account account) {
    if (account.balance >= amount) {
      account.balance -= amount;
      print("Withdrawn \$${amount}");
    } else {
      print("Insufficient balance. Withdrawal failed.");
    }
    return account.balance;
  }

  @override
  double cancelTransaction(Account account) {
    account.balance += amount;
    print("Withdrawal of \$${amount} cancelled (money returned)");
    return account.balance;
  }
}
