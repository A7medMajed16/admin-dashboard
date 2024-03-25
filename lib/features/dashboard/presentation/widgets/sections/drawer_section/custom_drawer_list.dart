import 'package:admin_dashboard/core/utils/app_icons.dart';
import 'package:admin_dashboard/features/dashboard/data/models/drawer_item_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/drawer_section/drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerList extends StatefulWidget {
  const CustomDrawerList({super.key});

  @override
  State<CustomDrawerList> createState() => _CustomDrawerListState();
}

class _CustomDrawerListState extends State<CustomDrawerList> {
  int selectedItem = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(
        iconPath: AppIcons.iconsDashboard, title: 'Dashboard'),
    const DrawerItemModel(
        iconPath: AppIcons.iconsMyTransaction, title: 'My Transaction'),
    const DrawerItemModel(
        iconPath: AppIcons.iconsStatistics, title: 'Statistics'),
    const DrawerItemModel(
        iconPath: AppIcons.iconsWallet, title: 'Wallet Account'),
    const DrawerItemModel(
        iconPath: AppIcons.iconsMyInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GestureDetector(
          onTap: () => setState(() {
            selectedItem = index;
          }),
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: selectedItem == index,
          ),
        ),
      ),
    );
  }
}
