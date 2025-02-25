import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';

Widget SmallButton({required String text, required double widthSize, required BuildContext context, required VoidCallback function, required Color textColor, required Color bgColor}) {
  return ElevatedButton(
    style: ButtonStyle(
      elevation: WidgetStateProperty.all(5),
      fixedSize: WidgetStateProperty.all(Size(widthSize, 45)),
      backgroundColor: WidgetStateProperty.all(bgColor),
      shape: WidgetStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        )
      )
    ),
    onPressed: () => function(),
    child: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: 14
      ),
    ),
  );
}