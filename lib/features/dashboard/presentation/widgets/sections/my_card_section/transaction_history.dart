import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/transaction_history_header.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/transaction_history_list.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          '13 April 2022',
          style:
              Styles.textStyle16W500.copyWith(color: const Color(0xffAAAAAA)),
        ),
        const TransactionHistoryList(),
      ],
    );
  }
}
