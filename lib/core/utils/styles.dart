import 'package:admin_dashboard/core/widgets/responsive_text_size_calculator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static TextStyle textStyle24W600 = GoogleFonts.montserrat(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(baseFontSize: 24),
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle20W600 = GoogleFonts.montserrat(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(baseFontSize: 20),
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle20W500 = GoogleFonts.montserrat(
    color: const Color(0xffFFFFFF),
    fontSize: getResponsiveFontSize(baseFontSize: 20),
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle18W600 = GoogleFonts.montserrat(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsiveFontSize(baseFontSize: 18),
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle16W700 = GoogleFonts.montserrat(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsiveFontSize(baseFontSize: 16),
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyle16W600 = GoogleFonts.montserrat(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(baseFontSize: 16),
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle16W500 = GoogleFonts.montserrat(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(baseFontSize: 16),
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle16W400 = GoogleFonts.montserrat(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(baseFontSize: 16),
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle14W400 = GoogleFonts.montserrat(
    color: const Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(baseFontSize: 14),
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle12W400 = GoogleFonts.montserrat(
    color: const Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(baseFontSize: 12),
    fontWeight: FontWeight.w400,
  );
}
