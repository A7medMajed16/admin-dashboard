import 'package:admin_dashboard/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.iconPath,
    required this.isActive,
  });
  final String iconPath;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white.withOpacity(0.1),
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset(iconPath),
          ),
        ),
        const Spacer(),
        SvgPicture.asset(isActive
            ? AppIcons.iconsRightArrowActive
            : AppIcons.iconsRightArrow),
      ],
    );
  }
}
