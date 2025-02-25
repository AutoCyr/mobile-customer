import 'package:autocyr/presentation/ui/atoms/buttons/small_button.dart';
import 'package:flutter/material.dart';

Widget CustomButton({
  required String text,
  required Size size,
  required double globalWidth,
  required double widthSize,
  required double backSize,
  required BuildContext context,
  required VoidCallback function,
  required Color textColor,
  required Color buttonColor,
  required Color backColor
}) {
  return GestureDetector(
    onTap: () => function(),
    child: SizedBox(
      width: globalWidth,
      child: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onTap: () => function(),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 5, top: 10),
              child: Container(
                width: backSize,
                height: 45,
                decoration: BoxDecoration(
                  color: backColor,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 3,
            child: SmallButton(
                text: text,
                widthSize: widthSize,
                context: context,
                function: () => function(),
                textColor: textColor,
                bgColor: buttonColor
            ),
          )
        ],
      ),
    ),
  );
}