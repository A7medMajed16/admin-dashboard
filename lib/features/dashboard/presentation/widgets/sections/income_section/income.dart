import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/income_section/income_chart.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/income_section/income_details_list.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/income_section/income_header.dart';

import 'package:flutter/material.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const IncomeHeader(),
          const SizedBox(height: 40),
          Expanded(
            child: width < 1410 && width > 1170 || width < 435
                ? const Column(
                    children: [
                      Expanded(child: IncomeChart(radius: 50)),
                      SizedBox(height: 24),
                      Expanded(flex: 2, child: IncomeDetailsList()),
                    ],
                  )
                : const Row(
                    children: [
                      Expanded(child: IncomeChart(radius: 50)),
                      SizedBox(width: 12),
                      Expanded(flex: 2, child: IncomeDetailsList()),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
