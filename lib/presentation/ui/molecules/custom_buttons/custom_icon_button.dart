import 'package:autocyr/presentation/ui/atoms/buttons/small_button.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';

Widget CustomIconButton({
  required IconData icon,
  required Size size,
  required BuildContext context,
  required VoidCallback function,
  required Color iconColor,
  required Color buttonColor,
  required Color backColor
}) {
  return GestureDetector(
    onTap: () => function(),
    child: SizedBox(
      width: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onTap: () => function(),
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: backColor,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 3,
            child: InkWell(
              onTap: () => function(),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: buttonColor,
                  boxShadow: [
                    BoxShadow(
                      color: GlobalThemeData.lightColorScheme.outline.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 0.5)
                    )
                  ]
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 14,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}