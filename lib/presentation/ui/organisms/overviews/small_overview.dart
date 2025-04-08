import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label30.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';

Widget SmallOverview({
  required String label,
  required String value,
  required IconData icon,
  required Size size,
}) {
  return Container(
    width: size.width * 0.45,
    height: 100,
    decoration: BoxDecoration(
      color: GlobalThemeData.lightColorScheme.onPrimary,
      border: Border.all(
          color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.5),
          width: 1
      ),
    ),
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label12(
                    text: label,
                    color: GlobalThemeData.lightColorScheme.secondary,
                    weight: FontWeight.bold,
                    maxLines: 1
                ),
                Label30(
                    text: value,
                    color: GlobalThemeData.lightColorScheme.primary,
                    weight: FontWeight.bold,
                    maxLines: 1
                ),
              ]
          ),
        ),
        Positioned(
          bottom: -25,
          right: -20,
          child: Icon(icon, color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.5), size: size.width * 0.2,),
        ),
      ],
    ),
  );
}