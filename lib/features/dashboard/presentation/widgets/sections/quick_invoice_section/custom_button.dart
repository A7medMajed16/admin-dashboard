import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.textColor});
  final String title;
  final Color backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 75.5, vertical: 20),
        child: Text(
          title,
          style: Styles.textStyle18W600.copyWith(color: textColor),
        ),
      ),
    );
  }
}
