import 'package:admin_dashboard/core/utils/app_icons.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardItemTitle extends StatelessWidget {
  const CardItemTitle({
    super.key,
    required this.cardName,
  });
  final String cardName;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 31, right: 45, top: 20),
      title: Text(
        'Name card',
        style: Styles.textStyle16W400.copyWith(color: Colors.white),
      ),
      subtitle: Text(
        cardName,
        style: Styles.textStyle20W500,
      ),
      trailing: SvgPicture.asset(AppIcons.iconsCardUserImage),
    );
  }
}
