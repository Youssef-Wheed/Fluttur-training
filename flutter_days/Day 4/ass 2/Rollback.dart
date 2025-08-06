import 'Account.dart';
abstract class Rollback {
  double cancelTransaction(Account account);
}
