import 'package:autocyr/presentation/ui/organisms/selectors/selector.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';

Widget SelectableField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String label,
  required double fontSize,
  required IconData icon,
  required List<String> options,
  required BuildContext context,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    readOnly: true,
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
    onTap: () => BottomSelector().showLabelMenu(
        context: context,
        title: label,
        options: options,
        onSelected: (value) => controller.text = value
    ),
  );
}