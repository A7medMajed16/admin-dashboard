import 'package:admin_dashboard/core/utils/styles.dart';

import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/cards_view.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/dots_indicator.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key, required this.isMobile});
  final bool isMobile;

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late PageController pageController;
  int currentCardIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentCardIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

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
          CardPageView(
            pageController: pageController,
            isMobile: widget.isMobile,
          ),
          const SizedBox(height: 19),
          DotsIndicator(
            currentCardIndex: currentCardIndex,
          ),
          const Divider(
            height: 40,
            thickness: 1,
            color: Color(0xffF1F1F1),
          ),
          const TransactionHistory(),
        ],
      ),
    );
  }
}
