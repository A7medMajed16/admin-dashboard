import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/data/models/card_model.dart';
import 'package:flutter/material.dart';

class CardNumber extends StatelessWidget {
  const CardNumber({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            cardModel.cardNumber,
            style: Styles.textStyle24W600.copyWith(
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            '${cardModel.expiredDate} - ${cardModel.cvv}',
            style: Styles.textStyle16W400.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
