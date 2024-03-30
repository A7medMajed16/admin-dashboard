import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/quick_invoice_section/custom_button.dart';
import 'package:flutter/material.dart';

class TransactionButtons extends StatelessWidget {
  const TransactionButtons({
    super.key,
    required this.isMobile,
  });

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Column(
            children: [
              const CustomButton(
                title: 'Send Mony',
                backgroundColor: Color(0xff4EB7F2),
                textColor: Colors.white,
              ),
              const SizedBox(height: 24),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 75.5, vertical: 20),
                  child: GestureDetector(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Add more details',
                        style: Styles.textStyle18W600.copyWith(
                          color: const Color(0xff4EB7F2),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        : Row(
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 75.5, vertical: 20),
                    child: GestureDetector(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Add more details',
                          style: Styles.textStyle18W600.copyWith(
                            color: const Color(0xff4EB7F2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
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
