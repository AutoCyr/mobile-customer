import 'dart:ui';

import 'package:autocyr/data/network/urls.dart';
import 'package:flutter/material.dart';

class BlurredBanner extends StatelessWidget {
  final String imageUrl;

  const BlurredBanner({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // 1. Image originale (pleine taille)
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(Urls.imageUrl+imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // 2. Flou appliqué sur l'image
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.black.withOpacity(0.1),
          ),
        ),

        // 3. Image nette centrée
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(Urls.imageUrl+imageUrl),
              fit: BoxFit.fitWidth,
              // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.srcOver),
            ),
          ),
        )
      ],
    );
  }
}