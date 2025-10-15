import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wedding_app/src/theme/app_colors.dart';
import 'package:wedding_app/src/theme/app_text_style.dart';

class LoginPageNumberField extends StatelessWidget {
  const LoginPageNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: ui.TextDirection.ltr,
      child: IntlPhoneField(
        dropdownIcon: Icon(
          Icons.arrow_drop_down_rounded,
          color: AppColors.primary,
        ),
        cursorColor: AppColors.primary,
        flagsButtonPadding: EdgeInsets.fromLTRB(16.w, 16.w, 0, 16.w),
        dropdownIconPosition: IconPosition.trailing,
        dropdownTextStyle: AppTextStyle.rubikRegular14.copyWith(
          color: AppColors.primary,
        ),
        initialCountryCode: 'QA',
        keyboardType: TextInputType.number,
        style: AppTextStyle.rubikRegular14.copyWith(color: AppColors.black),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary),
            borderRadius: BorderRadius.circular(10.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grayBorder),
            borderRadius: BorderRadius.circular(10.r),
          ),

          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grayBorder),
            borderRadius: BorderRadius.circular(10.r),
          ),
          hintText: '000-000-00',
          hintStyle: AppTextStyle.rubikRegular14.copyWith(
            color: AppColors.grayHint,
          ),
        ),
      ),
    );
  }
}
