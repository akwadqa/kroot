import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedding_app/features/auth/presentation/controller/auth_ui_controller.dart';
import 'package:wedding_app/features/auth/presentation/widgets/create_account_page/create_account_field.dart';
import 'package:wedding_app/features/auth/presentation/widgets/create_account_page/create_account_page_confirm_button.dart';
import 'package:wedding_app/features/auth/presentation/widgets/create_account_page/create_account_terms.dart';
import 'package:wedding_app/gen/assets.gen.dart';
import 'package:wedding_app/src/extenssions/int_extenssion.dart';
import 'package:wedding_app/src/extenssions/widget_extensions.dart';
import 'package:wedding_app/src/shared_widgets/custom_appbar.dart';
import 'package:wedding_app/src/shared_widgets/custom_button_widget.dart';
import 'package:wedding_app/src/theme/app_colors.dart';
import 'package:wedding_app/src/theme/app_text_style.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: context.tr('newAccount')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            35.verticalSpace,
        
            //? Title :
            Text(
              context.tr('weCreateNewAccount'),
              style: AppTextStyle.rubikRegular16.copyWith(
                color: AppColors.primary,
              ),
            ),
            Text('97466276709', style: AppTextStyle.rubikSemiBold16),
            21.verticalSpace,
        
            //? First name :
            CreataAccountField(
              icon: Assets.icons.firstNamePersonIc,
              hint: context.tr('enterFirstName'),
              isRequired: true,
              label: context.tr('firstName'),
            ),
            20.verticalSpace,
        
            //? Last name :
            CreataAccountField(
              icon: Assets.icons.lastNamePersonIc,
              hint: context.tr('enterLastName'),
              isRequired: true,
              label: context.tr('lastName'),
            ),
            20.verticalSpace,
        
            //? Enter email :
            CreataAccountField(
              icon: Assets.icons.enterEmailIc,
              hint: 'user@gmail.com',
              isRequired: false,
              label: context.tr('email'),
            ),
            20.verticalSpace,
        
            //? Terms :
            CreateAccountTerms(),
            35.verticalSpace,
        
            //? Confirm button :
            CreateAccountPageConfirmButton(),
          ],
        ).symmetricPadding(horizontal: 22.w),
      ),
    );
  }
}
