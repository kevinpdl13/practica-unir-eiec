import 'package:flutter/services.dart';

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: uppercase(newValue.text),
      selection: newValue.selection,
    );
  }
}

String uppercase(String value) {
  if(value.trim().isEmpty) return "";
  //return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
  return value.toUpperCase();
}