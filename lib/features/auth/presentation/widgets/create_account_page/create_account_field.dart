
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedding_app/gen/assets.gen.dart';
import 'package:wedding_app/src/theme/app_colors.dart';
import 'package:wedding_app/src/theme/app_text_style.dart';

class CreataAccountField extends StatelessWidget {
  const CreataAccountField({
    super.key,
    required this.hint,
    required this.label,
    required this.icon,
    required this.isRequired,
  });
  final String hint, label;
  final SvgGenImage icon;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(label, style: AppTextStyle.rubikRegular18),
            8.horizontalSpace,
            if (isRequired)
              Text(
                '*',
                style: AppTextStyle.poppinsMedium16.copyWith(
                  color: AppColors.red,
                ),
              ),
          ],
        ),
        12.verticalSpace,
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 2,
                spreadRadius: 3,
                color: AppColors.grayShadow.withValues(alpha: .24),
              ),
            ],
          ),
          child: TextFormField(
            cursorColor: AppColors.primary,
            style: AppTextStyle.rubikRegular16.copyWith(
              color: AppColors.primary,
            ),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppTextStyle.rubikRegular16.copyWith(
                color: AppColors.grayHint,
              ),

              contentPadding: EdgeInsets.zero,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: icon.svg(),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: AppColors.primary),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: AppColors.grayBorder),
              ),
              // prefixIconConstraints: BoxConstraints(maxWidth: 18),
            ),
          ),
        ),
      ],
    );
  }
}
