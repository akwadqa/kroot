import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wedding_app/features/auth/presentation/widgets/login_page/login_page_email_auth.dart';
import 'package:wedding_app/features/auth/presentation/widgets/login_page/login_page_google_auth.dart';
import 'package:wedding_app/features/auth/presentation/widgets/login_page/login_page_number_field.dart';
import 'package:wedding_app/features/auth/presentation/widgets/login_page/login_page_signin_button.dart';
import 'package:wedding_app/features/auth/presentation/widgets/login_page/login_page_terms_section.dart';
import 'package:wedding_app/src/extenssions/int_extenssion.dart';
import 'package:wedding_app/gen/assets.gen.dart';
import 'package:wedding_app/src/extenssions/widget_extensions.dart';
import 'package:wedding_app/src/theme/app_colors.dart';
import 'package:wedding_app/src/theme/app_text_style.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              103.verticalSpace,
              //? Whatsapp icon :
              Center(child: Assets.icons.whatsappIc.svg()),
              20.verticalSpace,

              //? Title :
              Text(
                // "LogInUsingWhatsAppNumber".tr(),
                context.tr('LogInUsingWhatsAppNumber'),
                textAlign: TextAlign.center,
                style: AppTextStyle.rubikMedium20.copyWith(
                  color: AppColors.primary,
                ),
              ).symmetricPadding(horizontal: 10.w),
              20.verticalSpace,

              //? Send verification :
              Text(
                context.tr('sendVerificationCode'),
                textAlign: TextAlign.center,
                style: AppTextStyle.rubikRegular16.copyWith(
                  color: AppColors.primary,
                ),
              ).symmetricPadding(horizontal: 34.w),
              20.verticalSpace,

              //? Number field :
              LoginPageNumberField(),
              20.verticalSpace,

              //? Login button :
              LoginPageSigninButton(),
              15.verticalSpace,

              //? Signup section :
              Text.rich(
                TextSpan(
                  text: context.tr('don’tHaveAnAccountYet'),
                  style: AppTextStyle.rubikRegular14.copyWith(
                    color: AppColors.primary,
                  ),
                  children: [
                    TextSpan(
                      text: context.tr('signUp'),
                      style: AppTextStyle.rubikMedium15.copyWith(
                        color: AppColors.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              20.verticalSpace,

              //? Or section :
              Row(
                children: [
                  Expanded(
                    child: Container(height: 1.h, color: AppColors.grayBorder),
                  ),
                  16.horizontalSpace,
                  Text(
                    context.tr('or'),
                    style: AppTextStyle.bodyXsmallRegular.copyWith(
                      color: AppColors.gray,
                    ),
                  ),
                  16.horizontalSpace,
                  Expanded(
                    child: Container(height: 1.h, color: AppColors.grayBorder),
                  ),
                ],
              ),

              20.verticalSpace,

              //? Email auth
              LoginPageEmailAuth(),
              20.verticalSpace,

              //? Google auth
              LoginPageGoogleAuth(),
              20.verticalSpace,

              //? Privacy :
              LoginPageTermsSection(),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
