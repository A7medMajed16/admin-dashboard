import 'package:admin_dashboard/features/dashboard/data/models/transaction_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/transaction_history_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});
  static const List<TransactionModel> transactions = [
    TransactionModel(
      transactionName: 'Cash Withdrawal',
      date: '13 Apr, 2024',
      amount: 20129,
      isIncome: false,
    ),
    TransactionModel(
      transactionName: 'Lading Page project',
      date: '13 Apr, 2024',
      time: '3:30 PM',
      amount: 2000,
      isIncome: true,
    ),
    TransactionModel(
      transactionName: 'Ahmed Mobile App project',
      date: '13 Apr, 2024',
      time: '4:00 AM',
      amount: 1568,
      isIncome: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        transactions.length,
        (index) =>
            TransactionHistoryItem(transactionModel: transactions[index]),
      ),
    );
  }
}
