import 'package:autocyr/presentation/ui/organisms/selectors/selector.dart';
import 'package:flutter/material.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';

Widget CustomSelectableField({
  required TextEditingController controller,
  required String key,
  required TextInputType keyboardType,
  required String label,
  required double fontSize,
  required IconData icon,
  required List options,
  required String Function(dynamic) displayField,
  required final Function(dynamic) onSelected,
  required BuildContext context,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    readOnly: true,
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
    onTap: () => BottomSelector().showObjectLabelMenu(
      context: context,
      title: label,
      options: options,
      displayField: (dynamic value) => displayField(value),
      onSelected: (dynamic value) => onSelected(value)
    ),
  );
}