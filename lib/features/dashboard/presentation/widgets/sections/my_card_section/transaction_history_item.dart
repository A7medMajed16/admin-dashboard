import 'package:admin_dashboard/core/utils/format_number.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/data/models/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: ListTile(
          title: Text(
            transactionModel.transactionName,
            style: Styles.textStyle16W600,
          ),
          subtitle: Text(
            transactionModel.date,
            style:
                Styles.textStyle16W600.copyWith(color: const Color(0xffAAAAAA)),
          ),
          trailing: Text(
            "\$${formatNumber(transactionModel.amount)}",
            style: Styles.textStyle20W600.copyWith(
                color: transactionModel.isIncome
                    ? const Color(0xff7DD97B)
                    : const Color(0xffF3735E)),
          ),
        ),
      ),
    );
  }
}
