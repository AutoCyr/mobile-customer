import 'package:flutter/material.dart';

Widget Label20({required String text, required Color color, required FontWeight weight, required int maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      color: color,
      fontSize: 20,
      fontWeight: weight
    ),
  );
}