import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: Styles.textStyle20W600,
        ),
        CircleAvatar(
          backgroundColor: const Color(0xffFAFAFA),
          radius: 24,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_rounded,
              color: Color(0xff4EB7F2),
            ),
          ),
        )
      ],
    );
  }
}
