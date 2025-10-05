// import 'package:easy_localization/easy_localization.dart' as tr;
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hcs/features/Auth/presentation/widgets/custom_divider.dart';
// import 'package:hcs/src/manager/app_strings.dart';
// import 'package:hcs/src/manager/validator.dart';
// import 'package:hcs/src/theme/app_colors.dart';

// class PhoneTextField extends StatelessWidget {
//   final TextEditingController mobileNoController;
//   final GlobalKey<FormFieldState<String>> fieldKey;

//   const PhoneTextField({
//     super.key,
//     required this.mobileNoController,
//     required this.fieldKey,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return FormField<String>(
//       key: fieldKey,
//       autovalidateMode: AutovalidateMode.disabled,
//       initialValue: mobileNoController.text,
//       validator: (value) =>
//           Validator.validateRequired(value, tr.tr(AppStrings.fieldRequired)),
//       builder: (field) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Directionality(
//               textDirection: TextDirection.ltr,
//               child: Container(
//                 width: 620.w,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16),
//                   border: Border.all(
//                     color: field.hasError
//                         ? AppColors.darkRed
//                         : AppColors.lightGray02,
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 50.w),
//                       child: Text(
//                         '+974',
//                         style: Theme.of(
//                           context,
//                         ).textTheme.displaySmall!.copyWith(fontSize: 28.sp),
//                       ),
//                     ),
//                     CustomDivider.vertical(long: 95.h, thick: 1),
//                     Expanded(
//                       child: TextField(
//                         controller: mobileNoController,
//                         keyboardType: TextInputType.phone,
//                         decoration: InputDecoration(
//                           enabledBorder: UnderlineInputBorder(
//                             borderSide: BorderSide.none,
//                           ),
//                           focusedBorder: UnderlineInputBorder(
//                             borderSide: BorderSide.none,
//                           ),
//                           errorBorder: UnderlineInputBorder(
//                             borderSide: BorderSide.none,
//                           ),
//                           focusedErrorBorder: UnderlineInputBorder(
//                             borderSide: BorderSide.none,
//                           ),
//                           contentPadding: EdgeInsets.symmetric(
//                             horizontal: 100.w,
//                           ),
//                           hintText: tr.tr(AppStrings.phoneNumber),
//                           hintStyle: Theme.of(context)
//                               .inputDecorationTheme
//                               .hintStyle!
//                               .copyWith(fontSize: 28.sp),
//                           border: InputBorder.none,
//                         ),
//                         onChanged: field.didChange,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             if (field.hasError)
//               Padding(
//                 padding: EdgeInsets.only(top: 8.h, left: 25.w, right: 25.w),
//                 child: Text(
//                   field.errorText!,
//                   style: Theme.of(
//                     context,
//                   ).inputDecorationTheme.errorStyle!.copyWith(),
//                 ),
//               ),
//           ],
//         );
//       },
//     );
//   }
// }
