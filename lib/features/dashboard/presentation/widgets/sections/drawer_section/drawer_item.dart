import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/data/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.iconPath),
      title: Text(
        drawerItemModel.title,
        style: drawerItemModel.isSelected
            ? Styles.textStyle16W700
            : Styles.textStyle16W400,
      ),
    );
  }
}
