import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';

class IncomeDetailsList extends StatelessWidget {
  const IncomeDetailsList({super.key});

  static const List<Map> incomeParameters = [
    {
      'color': Color(0xff208CC8),
      'title': 'Design service',
      'value': "40",
    },
    {
      'color': Color(0xff4EB7F2),
      'title': 'Design product',
      'value': "40",
    },
    {
      'color': Color(0xff064061),
      'title': 'Product royalty',
      'value': "40",
    },
    {
      'color': Color(0xffE2DECD),
      'title': 'Other',
      'value': "40",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        incomeParameters.length,
        (index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: incomeParameters[index]['color'],
            radius: 6,
          ),
          title: Text(incomeParameters[index]['title']!),
          titleTextStyle: Styles.textStyle16W400,
          trailing: Text(
            '${incomeParameters[index]['value']}%',
            style:
                Styles.textStyle16W500.copyWith(color: const Color(0xff208CC8)),
          ),
        ),
      ),
    );
  }
}
