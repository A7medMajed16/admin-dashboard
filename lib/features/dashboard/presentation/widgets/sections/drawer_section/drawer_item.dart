import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/data/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.iconPath),
      title: Text(
        drawerItemModel.title,
        overflow: TextOverflow.ellipsis,
        style: isActive
            ? Styles.textStyle16W700.copyWith(fontSize: 14)
            : Styles.textStyle16W400.copyWith(fontSize: 14),
      ),
      trailing: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 4,
        height: isActive ? 20 : 0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xff4EB7F2),
        ),
      ),
    );
  }
}
