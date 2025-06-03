import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

Widget CustomOtpField({
  required int fieldLength,
  required Function(String) onSubmit
}) {
  return OtpTextField(
    showFieldAsBox: false,
    numberOfFields: fieldLength,
    decoration: InputDecoration(
      counterText: "",
      filled: true,
      fillColor: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1),
      focusColor: GlobalThemeData.lightColorScheme.primary,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: GlobalThemeData.lightColorScheme.primary,
          width: 2
        )
      ),
    ),
    onSubmit: (value) {
      onSubmit(value);
    },
    hasCustomInputDecoration: true,
    clearText: true,
  );
}