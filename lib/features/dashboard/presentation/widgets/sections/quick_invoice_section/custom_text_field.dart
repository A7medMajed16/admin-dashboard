import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.title});
  final String hintText, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.textStyle16W500,
        ),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Styles.textStyle16W400.copyWith(
              color: const Color(0xffAAAAAA),
            ),
            fillColor: const Color(0xffFAFAFA),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xff4EB7F2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
