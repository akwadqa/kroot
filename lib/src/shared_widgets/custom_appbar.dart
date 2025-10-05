

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/src/shared_widgets/custom_back_arrow_widget.dart';
import 'package:wedding_app/src/theme/app_colors.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final bool? withBackButton;
  const CustomAppbar({
    super.key,
    required this.title,
    this.withBackButton,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      centerTitle: true,
      elevation: 0,
      // leadingWidth: 65,
      automaticallyImplyLeading: false,
      title: Text(
        context.tr(title),
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.primary),
      ),
      leading: withBackButton == null ? CustomBackArrowWidget() : null,
      bottom: PreferredSize(
          preferredSize: Size(double.infinity, 1),
          child: Divider(
            height: 1,
            color: AppColors.lightGray,
          )),
    );
  }
}
