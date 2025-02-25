import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';

Widget DescriptionField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String label,
  required double fontSize,
  required IconData icon
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    maxLines: 7,
    decoration: InputDecoration(
        filled: true,
        fillColor: GlobalThemeData.lightColorScheme.tertiary.withOpacity(0.1),
        focusColor: GlobalThemeData.lightColorScheme.tertiary,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: GlobalThemeData.lightColorScheme.tertiary,
                width: 2
            )
        ),
        labelText: label,
        prefixIcon: Icon(icon),
        labelStyle: TextStyle(
            color: GlobalThemeData.lightColorScheme.tertiary,
            fontSize: fontSize
        )
    ),
    style: TextStyle(
        fontSize: fontSize
    ),
    cursorColor: GlobalThemeData.lightColorScheme.tertiaryContainer,
  );
}