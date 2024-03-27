import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/data/models/card_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/cards_item.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: Styles.textStyle20W600,
          ),
          const SizedBox(height: 20),
          CardsItem(
            cardModel: CardModel(
                cardName: 'Ahmed Majed',
                cardNumber: '1234 5678 9101 1123',
                expiredDate: '12/20',
                cvv: '124'),
          ),
        ],
      ),
    );
  }
}
