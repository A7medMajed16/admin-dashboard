class TransactionModel {
  final String transactionName, date;
  final String? time;
  final double amount;
  final bool isIncome;

  const TransactionModel({
    required this.transactionName,
    required this.date,
    this.time,
    required this.amount,
    required this.isIncome,
  });
}
