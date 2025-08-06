import 'Account.dart';
abstract class Transaction {
  int transactionId;

  Transaction({required this.transactionId});

  double execute(Account account);
}
