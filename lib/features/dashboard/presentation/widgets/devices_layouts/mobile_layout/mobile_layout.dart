import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/all_expenses_section/all_expenses.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/income_section/income.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/my_card.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/quick_invoice_section/quick_invoice.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(child: AllExpenses()),
        SliverToBoxAdapter(
            child: QuickInvoice(
          isMobile: true,
        )),
        SliverToBoxAdapter(child: MyCard()),
        SliverFillRemaining(hasScrollBody: false, child: Income())
      ],
    );
  }
}
