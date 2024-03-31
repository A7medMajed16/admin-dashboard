import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/data/models/user_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/dashboard_body.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/drawer_section/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      appBar: width + 32 < 800
          ? PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: AppBar(
                    backgroundColor: const Color(0xff4EB7F2),
                    centerTitle: true,
                    iconTheme: const IconThemeData(
                      color: Colors.white,
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.logout_rounded,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    title: Text(
                      'Admin Dashboard',
                      style:
                          Styles.textStyle24W600.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          : null,
      drawer: Drawer(
        width: 250,
        child: CustomDrawer(
          userModel: UserModel(
            imagePath: AppImages.imagesUserFrame,
            name: 'Ahmed Majed',
            email: 'demo@gmail.com',
          ),
        ),
      ),
      body: const DashboardBody(),
    );
  }
}
