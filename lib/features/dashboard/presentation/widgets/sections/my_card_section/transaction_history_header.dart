import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: Styles.textStyle20W600,
        ),
        GestureDetector(
          child: Text(
            'See all',
            style:
                Styles.textStyle16W500.copyWith(color: const Color(0xff4EB7F2)),
          ),
        )
      ],
    );
  }
}
