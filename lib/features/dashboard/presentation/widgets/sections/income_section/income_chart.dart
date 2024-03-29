import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key, required this.radius});
  final double radius;

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int tapedSectionIndex = -1;
  static const List<Map> incomeParameters = [
    {
      'color': Color(0xff208CC8),
      'value': 40.0,
    },
    {
      'color': Color(0xff4EB7F2),
      'value': 25.0,
    },
    {
      'color': Color(0xff064061),
      'value': 20.0,
    },
    {
      'color': Color(0xffE2DECD),
      'value': 22.0,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: PieChart(getPieChartData()),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      centerSpaceRadius: widget.radius,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          tapedSectionIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: List.generate(
        incomeParameters.length,
        (index) => PieChartSectionData(
          showTitle: tapedSectionIndex == index,
          radius: tapedSectionIndex == index ? 35 : 30,
          titleStyle: Styles.textStyle12W400.copyWith(color: Colors.white),
          value: incomeParameters[index]['value'],
          color: incomeParameters[index]['color'],
        ),
      ),
    );
  }
}
