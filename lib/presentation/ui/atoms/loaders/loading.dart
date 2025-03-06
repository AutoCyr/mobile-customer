import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget Loading({required double widthSize, required BuildContext context, required Color bgColor, required Color shimmerColor}) {
  return Shimmer.fromColors(
    baseColor: shimmerColor.withOpacity(0.3),
    highlightColor: shimmerColor.withOpacity(0.1),
    child: Container(
        width: widthSize,
        height: 10,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.zero
        )
    ),
  );
}