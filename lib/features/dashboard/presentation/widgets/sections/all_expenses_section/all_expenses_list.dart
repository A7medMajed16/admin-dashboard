import 'package:admin_dashboard/core/utils/app_icons.dart';
import 'package:admin_dashboard/features/dashboard/data/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/all_expenses_section/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesList extends StatefulWidget {
  const AllExpensesList({super.key});

  @override
  State<AllExpensesList> createState() => _AllExpensesListState();
}

class _AllExpensesListState extends State<AllExpensesList> {
  final List<AllExpensesItemMode> allExpensesItems = [
    AllExpensesItemMode(
      title: 'Balance',
      month: 'April',
      year: '2022',
      amount: 20129,
      activeIconPath: AppIcons.iconsBalanceActive,
      inactiveIconPath: AppIcons.iconsBalance,
    ),
    AllExpensesItemMode(
      title: 'Income',
      month: 'April',
      year: '2022',
      amount: 23180,
      activeIconPath: AppIcons.iconsIncomeActive,
      inactiveIconPath: AppIcons.iconsIncome,
    ),
    AllExpensesItemMode(
      title: 'Expenses',
      month: 'April',
      year: '2022',
      amount: 10556,
      activeIconPath: AppIcons.iconsExpensesActive,
      inactiveIconPath: AppIcons.iconsExpenses,
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpensesItems.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () => setState(() {
                  selectedIndex = index;
                }),
                child: AllExpensesItem(
                  allExpensesItemMode: item,
                  isActive: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () => setState(() {
                selectedIndex = index;
              }),
              child: AllExpensesItem(
                allExpensesItemMode: item,
                isActive: selectedIndex == index,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
