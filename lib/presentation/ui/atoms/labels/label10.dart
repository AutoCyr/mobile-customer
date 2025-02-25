import 'package:flutter/material.dart';

Widget Label10({required String text, required Color color, required FontWeight weight, required int maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        color: color,
        fontSize: 10,
        fontWeight: weight
    ),
  );
}