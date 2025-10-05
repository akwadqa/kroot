// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:queen_validators/queen_validators.dart';
// import 'package:ahtizam/src/extenssions/int_extenssion.dart';
// import 'package:ahtizam/src/extenssions/widget_extensions.dart';

// import '../../../../../../theme/app_colors.dart';

// class EmailTextFormField extends StatelessWidget {
//   const EmailTextFormField({super.key, this.onSaved});
//   final void Function(String?)? onSaved;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           context.tr("email"),
//           style:
//               Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 15),
//         ).onlyPadding(start: 8),
//         8.verticalSpace,
//         TextFormField(
//           style: TextStyle(color: AppColors.gray),
//           decoration: InputDecoration(
//             hintText: context.tr('email'),
//             hintStyle: Theme.of(context)
//                 .textTheme
//                 .labelSmall!
//                 .copyWith(fontSize: 14, color: AppColors.grey600),
//           ),
//           textInputAction: TextInputAction.next,
//           validator: qValidator([
//             IsRequired(context.tr('required')),
//             IsEmail(context.tr('emailValidatorMessage'))
//           ]),
//           keyboardType: TextInputType.emailAddress,
//           onSaved: onSaved,
//         ),
//       ],
//     );
//   }
// }
