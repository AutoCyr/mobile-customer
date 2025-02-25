import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/small_button.dart';
import 'package:flutter/material.dart';

Widget CustomProgressButton({
  required Size size,
  required double globalWidth,
  required double widthSize,
  required double backSize,
  required BuildContext context,
  required Color shimmerColor,
  required Color buttonColor,
  required Color backColor
}) {
  return SizedBox(
    width: globalWidth,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 5, top: 10),
          child: Container(
            width: backSize,
            height: 45,
            decoration: BoxDecoration(
              color: backColor,
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 3,
          child: ProgressButton(
            widthSize: widthSize,
            context: context,
            shimmerColor: shimmerColor,
            bgColor: buttonColor
          ),
        )
      ],
    ),
  );
}