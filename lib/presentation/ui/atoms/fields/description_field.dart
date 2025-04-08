import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';

Widget DescriptionField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String label,
  required double fontSize,
  required IconData icon,
  required int maxLines
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    maxLines: maxLines,
    decoration: InputDecoration(
        filled: true,
        fillColor: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1),
        focusColor: GlobalThemeData.lightColorScheme.primary,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: GlobalThemeData.lightColorScheme.primary,
                width: 2
            )
        ),
        labelText: label,
        prefixIcon: Icon(icon),
        labelStyle: TextStyle(
            color: GlobalThemeData.lightColorScheme.secondary,
            fontSize: fontSize
        )
    ),
    style: TextStyle(
        fontSize: fontSize
    ),
    cursorColor: GlobalThemeData.lightColorScheme.primary,
  );
}