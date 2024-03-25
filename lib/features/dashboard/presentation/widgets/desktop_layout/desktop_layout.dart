import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/features/dashboard/data/models/user_model.dart';
import 'package:flutter/material.dart';

import 'drawer_section/custom_drawer.dart';

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
      ],
    );
  }
}
