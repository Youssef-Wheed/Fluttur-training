import 'Account.dart';
import 'Transaction.dart';
import 'Rollback.dart';

class Deposit extends Transaction implements Rollback {
  double amount;

  Deposit({
    required int transactionId,
    required this.amount,
  }) : super(transactionId: transactionId);

  @override
  double execute(Account account) {
    account.balance += amount;
    print("Deposited \$${amount}");
    return account.balance;
  }

  @override
  double cancelTransaction(Account account) {
    account.balance -= amount;
    print("Deposit of \$${amount} cancelled");
    return account.balance;
  }
}

