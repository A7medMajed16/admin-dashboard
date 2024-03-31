import 'package:admin_dashboard/features/dashboard/data/models/card_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/cards_item.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CardPageView extends StatelessWidget {
  const CardPageView(
      {super.key, required this.pageController, required this.isMobile});
  final PageController pageController;
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) => CardsItem(
        cardModel: CardModel(
          cardName: 'Ahmed Majed',
          cardNumber: '1234 5678 9101 1123',
          expiredDate: '12/20',
          cvv: '124',
        ),
        isMobile: isMobile,
      ),
    );
  }
}
