import 'package:flutter/services.dart';

class InputFormatter {
  // static addressFormat() =>
  //     FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9 .,]'));
  // static numberAndString() =>
  //     FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9]'));
  // static digitsOnly() => FilteringTextInputFormatter.digitsOnly;
  // static stringOnly() => FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]'));
  // static upperCaseOnly() => FilteringTextInputFormatter.allow(RegExp('[A-Z]'));
  // static smallLettersAndUnderscoreOnly() =>
  //     FilteringTextInputFormatter.allow(RegExp('[a-z_]'));
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
