import 'package:admin_dashboard/core/utils/app_icons.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesHeader extends StatefulWidget {
  const AllExpensesHeader({super.key});

  @override
  State<AllExpensesHeader> createState() => _AllExpensesHeaderState();
}

class _AllExpensesHeaderState extends State<AllExpensesHeader> {
  static const List<DropdownMenuItem> allExpensesPeriod = [
    DropdownMenuItem<String>(
      value: 'D',
      child: Text('Daily'),
    ),
    DropdownMenuItem<String>(
      value: 'W',
      child: Text('Weakly'),
    ),
    DropdownMenuItem<String>(
      value: 'M',
      child: Text('Monthly'),
    ),
    DropdownMenuItem<String>(
      value: 'Y',
      child: Text('Yearly'),
    )
  ];

  void dropdownCallBack(dynamic selectedValue) {
    if (selectedValue is String) {
      setState(() {
        dropdownValue = selectedValue;
      });
    }
  }

  String dropdownValue = 'M';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: Styles.textStyle20W600,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButton(
            items: allExpensesPeriod,
            value: dropdownValue,
            onChanged: dropdownCallBack,
            icon: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: SvgPicture.asset(AppIcons.iconsDownArrow),
            ),
            style: Styles.textStyle16W500,
            underline: const SizedBox(),
            elevation: 9,
            borderRadius: BorderRadius.circular(12),
            dropdownColor: const Color(0xffF7F9FA),
          ),
        )
      ],
    );
  }
}
