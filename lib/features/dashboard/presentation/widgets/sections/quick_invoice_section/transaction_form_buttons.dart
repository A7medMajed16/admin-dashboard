import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/quick_invoice_section/custom_button.dart';
import 'package:flutter/material.dart';

class TransactionButtons extends StatelessWidget {
  const TransactionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 75.5, vertical: 20),
            child: GestureDetector(
              child: Text(
                'Add more details',
                style: Styles.textStyle18W600.copyWith(
                  color: const Color(0xff4EB7F2),
                ),
              ),
            ),
          ),
        )),
        const SizedBox(width: 24),
        const Expanded(
          child: CustomButton(
            title: 'Send Mony',
            backgroundColor: Color(0xff4EB7F2),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
