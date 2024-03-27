import 'package:admin_dashboard/core/utils/app_images.dart';

import 'package:admin_dashboard/features/dashboard/data/models/user_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/all_expenses_section/all_expenses.dart';
import 'package:flutter/material.dart';
import '../../sections/drawer_section/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(
            userModel: UserModel(
              imagePath: AppImages.imagesUserFrame,
              name: 'Lekan Okeowo',
              email: 'demo@gmail.com',
            ),
          ),
        ),
        const Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(35),
            child: Column(
              children: [
                AllExpenses(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
