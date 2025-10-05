import 'package:flutter/services.dart';

class ArabicNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String filteredText = newValue.text.replaceAll(RegExp(r'^[٠-٩]+$'), '');

    return TextEditingValue(
      text: filteredText,
      selection: newValue.selection,
    );
  }
}
