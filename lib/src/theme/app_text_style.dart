import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  //? Rubik semi bold :
  static TextStyle rubikSemiBold18 = GoogleFonts.rubik(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
  );

  //? Rubik medium :
  static TextStyle rubikMedium20 = GoogleFonts.rubik(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
  );

  static TextStyle rubikMedium15 = GoogleFonts.rubik(
    fontWeight: FontWeight.w500,
    fontSize: 15.sp,
  );
  static TextStyle rubikMedium14 = GoogleFonts.rubik(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );

  //? Rubik regular :
  static TextStyle rubikRegular16 = GoogleFonts.rubik(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
  );

  static TextStyle rubikRegular14 = GoogleFonts.rubik(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );

  //********************** INTER ////////////// */

  static TextStyle bodyXsmallRegular = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
  );

  static TextStyle bodysmallSemibold = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
  );
}
