import 'package:admin_dashboard/core/utils/app_icons.dart';
import 'package:admin_dashboard/features/dashboard/data/models/drawer_item_model.dart';
import 'package:admin_dashboard/features/dashboard/data/models/user_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/drawer_section/custom_drawer_list.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/drawer_section/drawer_item.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/drawer_section/user_info.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 48),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: UserInfo(userModel: userModel),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            const CustomDrawerList(),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  DrawerItem(
                    drawerItemModel: DrawerItemModel(
                      iconPath: AppIcons.iconsSetting,
                      title: 'Setting system',
                    ),
                    isActive: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    drawerItemModel: DrawerItemModel(
                      iconPath: AppIcons.iconsLogout,
                      title: 'Logout account',
                    ),
                    isActive: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
