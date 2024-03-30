import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/quick_invoice_section/latest_transaction.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/quick_invoice_section/quick_invoice_header.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/quick_invoice_section/transaction_form.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key, required this.isMobile});
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(height: 24),
          const LatestTransaction(),
          const Divider(
            height: 48,
            thickness: 1,
            color: Color(0xffF1F1F1),
          ),
          TransactionForm(
            isMobile: isMobile,
          ),
        ],
      ),
    );
  }
}
