import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/features/dashboard/data/models/user_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/all_expenses_section/all_expenses.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/income_section/income.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/my_card_section/my_card.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/quick_invoice_section/quick_invoice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../sections/drawer_section/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(
            userModel: UserModel(
              imagePath: AppImages.imagesUserFrame,
              name: 'Ahmed Majed',
              email: 'demo@gmail.com',
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40, left: 32, bottom: 32, right: 24),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: AllExpenses()),
                SliverToBoxAdapter(child: QuickInvoice()),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40, right: 32),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: MyCard(),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Income(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
