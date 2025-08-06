import 'dart:io';
import 'Account.dart';
import 'Transaction.dart';
import 'Deposit.dart';
import 'Withdraw.dart';
import 'BalanceInquiry.dart';
import 'Rollback.dart';

// Assume all previous classes (Account, Transaction, Deposit, Withdraw, BalanceInquiry, Rollback) are defined above

void main() {
  Account? account;
  Transaction? lastTransaction;

  while (true) {
    print('\n===== BANK MENU =====');
    print('Press 1 to enter account details');
    print('Press 2 to deposit');
    print('Press 3 to withdraw');
    print('Press 4 to show current balance');
    print('Press 5 to cancel last transaction');
    print('Press 6 to exit');

    stdout.write('Choose an option: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("Enter account number:");
        int accountNumber = int.parse(stdin.readLineSync()!);

        stdout.write('Enter owner name: ');
        String name = stdin.readLineSync()!;

        stdout.write('Enter initial balance: ');
        double balance = double.parse(stdin.readLineSync()!);

        account = Account(
          accountNumber: accountNumber,
          ownerName: name,
          balance: balance,
        );

        print("✅ Account created successfully!");
        break;

      case '2':
        if (account == null) {
          print("❌ Please create an account first.");
          break;
        }

        stdout.write('Enter deposit amount: ');
        double amount = double.parse(stdin.readLineSync()!);

        Deposit deposit = Deposit(
          transactionId: DateTime.now().millisecondsSinceEpoch,
          amount: amount,
        );
        deposit.execute(account);
        lastTransaction = deposit;
        break;

      case '3':
        if (account == null) {
          print("❌ Please create an account first.");
          break;
        }

        stdout.write('Enter withdrawal amount: ');
        double amount = double.parse(stdin.readLineSync()!);

        Withdraw withdraw = Withdraw(
          transactionId: DateTime.now().millisecondsSinceEpoch,
          amount: amount,
        );
        withdraw.execute(account);
        lastTransaction = withdraw;
        break;

      case '4':
        if (account == null) {
          print("❌ Please create an account first.");
          break;
        }

        stdout.write('Enter currency type (U for USD, E for Euro): ');
        String currency = stdin.readLineSync()!;

        BalanceInquiry inquiry = BalanceInquiry(
          transactionId: DateTime.now().millisecondsSinceEpoch,
          currencyType: currency,
        );

        inquiry.execute(account);
        lastTransaction = null; // no rollback for balance inquiry
        break;

      case '5':
        if (account == null) {
          print("❌ Please create an account first.");
          break;
        }

        if (lastTransaction == null) {
          print("❌ No transaction to cancel.");
        } else if (lastTransaction is Rollback) {
          (lastTransaction as Rollback).cancelTransaction(account);
          lastTransaction = null;
        } else {
          print("❌ This transaction cannot be cancelled.");
        }
        break;

      case '6':
        print("👋 Exiting... Goodbye!");
        return;

      default:
        print("❌ Invalid choice. Try again.");
    }
  }
}
