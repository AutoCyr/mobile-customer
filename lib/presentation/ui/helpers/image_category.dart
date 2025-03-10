import 'package:flutter/cupertino.dart';

class ImageCategory {

  loadImage(String name) {
    switch(name.toLowerCase()) {
      case "deux roues":
        return Image.asset("assets/pngs/bike.webp", fit: BoxFit.fitWidth, width: 60, height: 60);
      case "trois roues":
        return Image.asset("assets/pngs/tricycle.webp", fit: BoxFit.fitWidth, width: 60, height: 60);
      case "quatre roues":
        return Image.asset("assets/pngs/car.webp", fit: BoxFit.fitWidth, width: 60, height: 60);
      default:
        return Image.asset("assets/pngs/car.webp", fit: BoxFit.fitWidth, width: 60, height: 60);
    }
  }
}