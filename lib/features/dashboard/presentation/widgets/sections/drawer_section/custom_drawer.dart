import 'package:admin_dashboard/features/dashboard/data/models/user_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/drawer_section/user_info.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfo(userModel: userModel),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
