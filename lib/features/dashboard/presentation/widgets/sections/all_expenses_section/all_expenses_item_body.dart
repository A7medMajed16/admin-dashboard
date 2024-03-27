import 'package:admin_dashboard/core/utils/format_number.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/data/models/all_expenses_item_model.dart';
import 'package:flutter/material.dart';

class AllExpensesItemBody extends StatelessWidget {
  const AllExpensesItemBody(
      {super.key, required this.allExpensesItemMode, required this.isActive});
  final AllExpensesItemMode allExpensesItemMode;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 34),
        Text(
          allExpensesItemMode.title,
          style: isActive
              ? Styles.textStyle16W600.copyWith(color: Colors.white)
              : Styles.textStyle16W600,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            '${allExpensesItemMode.month} ${allExpensesItemMode.year}',
            style: isActive
                ? Styles.textStyle14W400.copyWith(color: Colors.white)
                : Styles.textStyle14W400,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            '\$${formatNumber(allExpensesItemMode.amount)}',
            style: isActive
                ? Styles.textStyle14W400.copyWith(color: Colors.white)
                : Styles.textStyle14W400,
          ),
        ),
      ],
    );
  }
}
