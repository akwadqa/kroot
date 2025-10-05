import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:queen_validators/queen_validators.dart';

String? Function(String?) mobileNumberValidation(BuildContext context) {
  return qValidator([
    IsRequired(context.tr('required')),
    MaxLength(8, context.tr('mustBeEightDigits')),
    MinLength(8, context.tr('mustBeEightDigits')),
    RegExpRule(
      RegExp(r'^([3567])\d+'),
      context.tr('qatariPhoneNumberValidator'),
    ),
  ]);
}
