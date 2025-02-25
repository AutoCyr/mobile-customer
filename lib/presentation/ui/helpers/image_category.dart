import 'package:flutter/cupertino.dart';

class ImageCategory {

  loadImage(String name) {
    switch(name.toLowerCase()) {
      case "deux roues":
        return Image.asset("assets/pngs/bike.webp", fit: BoxFit.cover, width: 45, height: 45);
      case "trois roues":
        return Image.asset("assets/pngs/tricycle.webp", fit: BoxFit.cover, width: 45, height: 45);
      case "quatre roues":
        return Image.asset("assets/pngs/car.webp", fit: BoxFit.cover, width: 55, height: 55);
      default:
        return Image.asset("assets/pngs/car.webp", fit: BoxFit.cover, width: 55, height: 55);
    }
  }
}