import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndecatore extends StatelessWidget {
  const DotsIndecatore({super.key, required this.currentCardIndex});
  final int currentCardIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CustomDotIndicator(isActive: index == currentCardIndex),
              )),
    );
  }
}
