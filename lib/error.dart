import 'dart:io';

void main() {
  Bank user = Bank(
      accountName: "User", accountNumber: "01XPR0062", accountBalance: 2000);

  try {
    user.deposit();
  } on Fail catch (failure) {
    print(failure);
  }
}

class Bank {
  String accountName;
  String accountNumber;
  double accountBalance;
  Bank({this.accountName, this.accountBalance, this.accountNumber});

  // method checks user's balance
  String checkBalance() {
    return "You account balance is \$${this.accountBalance}";
  }

  // method deposits into user's account
  String deposit() {
    print("How much do you want to deposit");
    String depositAmountString = stdin.readLineSync();

    try {
      if (isNumeric(depositAmountString)) {
        double depositAmountDouble = double.tryParse(depositAmountString);
        this.accountBalance += depositAmountDouble;
        return "Amount deposited successfully";
      } else {
        throw Fail(
            message: "The string you passed cannot be converted to number");
      }
    } catch (e) {
      throw Fail(message: e.toString());
    }
  }
}

bool isNumeric(String string) {
  final numericRegex = RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$');
  return numericRegex.hasMatch(string);
}

class Fail {
  final String message;
  Fail({this.message});

  @override
  String toString() {
    return this.message;
  }
}
