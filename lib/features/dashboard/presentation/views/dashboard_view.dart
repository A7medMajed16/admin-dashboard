import 'package:admin_dashboard/features/dashboard/presentation/widgets/dashboard_body.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: DashboardBody(),
    );
  }
}
