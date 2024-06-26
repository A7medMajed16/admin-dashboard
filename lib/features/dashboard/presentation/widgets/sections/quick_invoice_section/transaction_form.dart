import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/quick_invoice_section/custom_text_field.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/quick_invoice_section/transaction_form_buttons.dart';
import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  const TransactionForm({super.key, required this.isMobile});
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: CustomTextField(
                  hintText: 'Type customer name', title: 'Customer name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTextField(
                  hintText: 'Type customer email', title: 'Customer email'),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Row(
          children: [
            Expanded(
              child: CustomTextField(
                  hintText: 'Type item name', title: 'Item name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTextField(
                  hintText: 'Enter item count', title: 'Item count'),
            ),
          ],
        ),
        const SizedBox(height: 24),
        TransactionButtons(
          isMobile: isMobile,
        ),
      ],
    );
  }
}
