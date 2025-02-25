import 'package:flutter/material.dart';

Widget BackBackground({required Size size}){
  return Container(
    height: size.height,
    width: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/back.webp"),
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.lighten),
          fit: BoxFit.cover
      ),
    ),
  );
}