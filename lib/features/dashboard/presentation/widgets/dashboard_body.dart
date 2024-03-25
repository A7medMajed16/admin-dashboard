import 'package:admin_dashboard/core/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/desktop_layout/desktop_layout.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/mobile_layout/mobile_layout.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/tablet_layout/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      deskTopLayout: (context) => const DesktopLayout(),
    );
  }
}
