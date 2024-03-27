import 'package:admin_dashboard/core/utils/app_icons.dart';
import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardsItem extends StatelessWidget {
  const CardsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              AppImages.imagesCardBackground,
            ),
          ),
          color: const Color(0XFF4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 45, top: 20),
              title: Text(
                'Name card',
                style: Styles.textStyle16W400.copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'John Doe',
                style: Styles.textStyle20W500,
              ),
              trailing: SvgPicture.asset(AppIcons.iconsCardUserImage),
            ),
          ],
        ),
      ),
    );
  }
}
