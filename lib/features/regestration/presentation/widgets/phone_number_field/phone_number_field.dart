// import 'package:easy_localization/easy_localization.dart' as local;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:ahtizam/src/extenssions/int_extenssion.dart';
// import 'package:ahtizam/src/extenssions/widget_extensions.dart';

// import '../../../../../../../gen/assets.gen.dart';
// import '../../../../../../theme/app_colors.dart';
// import '../../../../../../utils/app_validation.dart';
// import '../../../../../../utils/arabic_number_input_formatter.dart';

// class PhoneNumberField extends StatelessWidget {
//   const PhoneNumberField({super.key, this.onSaved});

//   // final String label;
//   final void Function(String?)? onSaved;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           context.tr("phone_number"),
//           style:
//               Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 15),
//         ).onlyPadding(start: 8),
//         8.verticalSpace,
//         Directionality(
//           textDirection: TextDirection.ltr,
//           child: Row(
//             children: [
//               _buildPhoneNumberPrefix(context),
//               4.horizontalSpace,
//               Flexible(
//                 child: TextFormField(
//                   style: const TextStyle(color: AppColors.gray),
//                   decoration: InputDecoration(
//                     filled: true,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12)),
//                     ),
//                     hintText: context.tr('phone_number'),
//                     hintStyle: Theme.of(context)
//                         .textTheme
//                         .labelSmall!
//                         .copyWith(fontSize: 14, color: AppColors.grey600),
//                   ),
//                   inputFormatters: [
//                     FilteringTextInputFormatter.digitsOnly,
//                     ArabicNumberInputFormatter(),
//                   ],
//                   textInputAction: TextInputAction.next,
//                   keyboardType: TextInputType.phone,
//                   validator: mobileNumberValidation(context),
//                   onSaved: onSaved,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildPhoneNumberPrefix(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           border: Border.all(color: AppColors.grayBorder),
//           borderRadius: BorderRadius.all(Radius.circular(10))),
//       width: 100,
//       height: 52,
//       child: IntrinsicHeight(
//         child: Row(
//           children: [
//             Assets.images.qatarCountry
//                 .image(fit: BoxFit.cover)
//                 .symmetricPadding(horizontal: 6),
//             Text(
//               '+974',
//               style: Theme.of(context).textTheme.displaySmall!.copyWith(
//                     fontWeight: FontWeight.w600,
//                     color: AppColors.black800,
//                   ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
