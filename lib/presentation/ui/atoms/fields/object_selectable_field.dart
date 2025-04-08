import 'package:autocyr/domain/models/abstractables/selectable.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/organisms/searchables/searchable.dart';
import 'package:flutter/material.dart';

Widget ObjectSelectableField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String label,
  required double fontSize,
  required IconData icon,
  required BuildContext context,
  required Function() onSelected,
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
    onTap: () => onSelected(),
  );
}