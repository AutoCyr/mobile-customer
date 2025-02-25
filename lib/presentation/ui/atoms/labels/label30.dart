import 'package:flutter/material.dart';

Widget Label30({required String text, required Color color, required FontWeight weight, required int maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      color: color,
      fontSize: 30,
      fontWeight: weight
    ),
  );
}