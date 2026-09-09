class BankAccount {
  String accountHolderName;
  int accountNumber;

  double _balance;

  BankAccount(this.accountHolderName, this.accountNumber, this._balance);

  // Method to deposit money
  void deposit(double amount) {
    if (amount <= 0) {
      print("Deposit amount must be greater than zero.");
      return;
    }
    _balance += amount;
    print("After Deposit: Balance: ${_balance.toStringAsFixed(0)}");
  }

  //withdraw money
  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be greater than zero.");
      return;
    }
    if (amount > _balance) {
      print("Insufficient balance! Withdrawal denied.");
      return;
    }
    _balance -= amount;
    print("After Withdrawal: Balance: ${_balance.toStringAsFixed(0)}");
  }

  //display account information
  void displayAccountInfo() {
    print(
      "Account Holder: $accountHolderName "
      "Account Number: $accountNumber "
      "Balance: ${_balance.toStringAsFixed(0)}",
    );
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  BankAccount account1 = BankAccount("Ibrahim", 1001, 5000);
  account1.displayAccountInfo();
  account1.deposit(2000);
  account1.withdraw(1500);

  print("");

  BankAccount account2 = BankAccount("Rakib", 1002, 8000);
  account2.displayAccountInfo();
}
