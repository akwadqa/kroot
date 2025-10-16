import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:wedding_app/src/extenssions/widget_extensions.dart';
import 'package:wedding_app/src/routing/routes.dart';
import 'package:wedding_app/src/shared_widgets/custom_button_widget.dart';
import 'package:wedding_app/src/theme/app_colors.dart';
import 'package:wedding_app/src/theme/app_text_style.dart';

class VerificationPageConfirmButton extends StatelessWidget {
  const VerificationPageConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonWidget(
      text: '',
      onTap: () {
        context.push(Routes.creataAccount);
      },
      isFiled: true,
      content: Text(
        context.tr('confirm'),
        style: AppTextStyle.rubikSemiBold18.copyWith(color: AppColors.white),
      ),
      height: 50.h,
      width: 330.w,
      backgroundColor: AppColors.primary,
    ).symmetricPadding(horizontal: 22.w);
  }
}
