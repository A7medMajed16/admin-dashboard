import 'package:admin_dashboard/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdminDashboard());
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
      theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(
        cursorColor: const Color(0xff4EB7F2),
        selectionColor: const Color(0xff4EB7F2).withOpacity(0.5),
        selectionHandleColor: const Color(0xff4EB7F2),
      )),
    );
  }
}
