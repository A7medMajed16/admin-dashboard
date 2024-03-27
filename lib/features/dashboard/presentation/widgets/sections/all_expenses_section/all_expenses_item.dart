import 'package:admin_dashboard/features/dashboard/data/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/all_expenses_section/all_expenses_item_body.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/all_expenses_section/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemMode, this.isActive = false});
  final bool isActive;
  final AllExpensesItemMode allExpensesItemMode;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isActive ? const Color(0xff4EB7F2) : Colors.white,
        border: isActive
            ? null
            : Border.all(
                width: 1,
                color: const Color(0xffF1F1F1),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            iconPath: isActive
                ? allExpensesItemMode.activeIconPath
                : allExpensesItemMode.inactiveIconPath,
            isActive: isActive,
          ),
          AllExpensesItemBody(
            allExpensesItemMode: allExpensesItemMode,
            isActive: isActive,
          ),
        ],
      ),
    );
  }
}
