import 'Account.dart';
import 'Transaction.dart';

class BalanceInquiry extends Transaction {
  String currencyType; // "U" for USD, "E" for Euro

  BalanceInquiry({
    required int transactionId,
    required this.currencyType,
  }) : super(transactionId: transactionId);

  @override
  double execute(Account account) {
    double convertedBalance;

    if (currencyType.toUpperCase() == "U") {
      convertedBalance = account.balance;
      print("Balance in USD: \$${convertedBalance.toStringAsFixed(2)}");
    } else if (currencyType.toUpperCase() == "E") {
      // Let's assume the conversion rate: 0.1 USD = 10 EUR
      convertedBalance = account.balance * 0.9;
      print("Balance in Euro: €${convertedBalance.toStringAsFixed(2)}");
    } else {
      print("Unknown currency type. Showing default in USD.");
      convertedBalance = account.balance;
    }

    return convertedBalance;
  }
}
