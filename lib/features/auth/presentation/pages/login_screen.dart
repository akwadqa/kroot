import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:wedding_app/features/Auth/presentation/controller/auth_controller.dart';
import 'package:wedding_app/features/auth/data/models/login_params.dart';
import 'package:wedding_app/features/auth/presentation/controller/auth_controller.dart'
    hide authControllerProvider;
import 'package:wedding_app/features/auth/presentation/widgets/email_text_form_field.dart';
import 'package:wedding_app/src/extenssions/int_extenssion.dart';
import 'package:wedding_app/gen/assets.gen.dart';
import 'package:wedding_app/src/routing/app_router.gr.dart';
import 'package:wedding_app/src/shared_widgets/app_dialogs.dart';
import 'package:wedding_app/src/shared_widgets/custom_button_widget.dart';
import 'package:wedding_app/src/shared_widgets/notify_snackbar.dart';
import 'package:wedding_app/src/theme/app_colors.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true; // 👈 control password visibility

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        height: screenHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.bottomCenter,
          //   end: Alignment.topCenter,
          //   colors: AppColors.splashGradientColors,
          //   stops: AppColors.splashGradientStops,
          //   transform: GradientRotation(138.65 * 3.14159265359 / 180),
          // ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: screenHeight),
              child: IntrinsicHeight(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 40),
                      Center(
                        child: Assets.images.imWedding.image(
                          fit: BoxFit.contain,
                          // width: 231,
                          // height: 231,
                        ),
                      ),

                      Text(
                        "welcome_msg".tr(),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      SizedBox(height: 30),
                      EmailTextFormField(controller: _emailController),

                      24.verticalSpace,
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          hintText: "password".tr(),
                          hintStyle: Theme.of(context).textTheme.labelSmall!
                              .copyWith(fontSize: 14, color: AppColors.grey600),
                          prefixIcon: Icon(Icons.lock_open_outlined),
                          // 👇 Suffix eye icon
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                        validator: (pass) => validatePassword(pass, context),
                      ),

                      const Spacer(),
                      Consumer(
                        builder: (context, ref, child) {
                          ref.listen(authControllerProvider, (prev, next) {
            //                         if (next is AsyncData) {
            // } else if (next is AsyncError) {
            //   showErrorDialog(context, next.error.toString());
            // }
                            if (prev is AsyncLoading && next is AsyncData) {
                              
                              notifyUser(
                                context: context,
                                message: 'sign_in_done_successfully'.tr(),
                                success: true,
                              );
              context.navigateTo(MainRoute());

                            } else if (next is AsyncError) {
              showErrorDialog(context, next.error.toString());

                              notifyUser(
                                context: context,
                                message: next.error.toString(),
                                success: false,
                              );
                            }
                          });
                          final asyncLogin = ref.watch(authControllerProvider);

                          return CustomButtonWidget(
                            backgroundColor: AppColors.primary,
                            text: tr(context: context, "login"),
                            onTap: asyncLogin is AsyncLoading
                                ? null
                                :() {  
                                    if (_formKey.currentState!.validate()) {
                                      ref
                                          .read(authControllerProvider.notifier)
                                          .login(
                                            LoginParams(
                                              email: _emailController.text,
                                              pass: _passwordController.text,
                                            ),
                                          );
                                    
                                  }},
                            isFiled: true,
                            height: 55,
                            width: 300,
                          );
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static String? validatePassword(String? value, BuildContext context) {
    int passLengthRule = 6;
    if (value == null || value.isEmpty) {
      return tr(context: context, "please_enter_password".tr());
    }
    if (value.length < passLengthRule) {
      return "password_short_lenght".tr(args: ['$passLengthRule']);
    }
    return null;
  }
}
