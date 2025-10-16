import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wedding_app/features/auth/presentation/controller/auth_ui_controller.dart';
import 'package:wedding_app/src/theme/app_colors.dart';
import 'package:wedding_app/src/theme/app_text_style.dart';

class LoginPageNumberField extends ConsumerWidget {
  const LoginPageNumberField(this.controller, this.formKey, {super.key});
  final TextEditingController controller;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: formKey,
      child: Directionality(
        textDirection: ui.TextDirection.ltr,
        child: IntlPhoneField(
          // autovalidateMode: AutovalidateMode.always,
          controller: controller,
          initialValue: '',
          onChanged: (val) {
            ref
                .read(authUiControllerProvider.notifier)
                .checkPhoneFilled(val.number.isNotEmpty ? true : false);
          },
          validator: (val) {
            if (val == null || val.number.isEmpty) {
              return 'Please enter phone number';
            } else if (val.number.length < 9) {
              return 'Invalid phone number';
            }
            return '';
          },
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
      ),
    );
  }
}
