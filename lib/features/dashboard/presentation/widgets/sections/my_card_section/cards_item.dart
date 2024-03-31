import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/features/dashboard/data/models/card_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/card_item_number.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/card_item_title.dart';
import 'package:flutter/material.dart';

class CardsItem extends StatelessWidget {
  const CardsItem({super.key, required this.cardModel, required this.isMobile});
  final CardModel cardModel;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AppImages.imagesCardBackground,
            ),
          ),
          color: const Color(0XFF4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CardItemTitle(
              cardName: cardModel.cardName,
            ),
            const Expanded(child: SizedBox()),
            CardNumber(
              cardModel: cardModel,
              isMobile: isMobile,
            ),
            const Flexible(child: SizedBox(height: 24)),
          ],
        ),
      ),
    );
  }
}
