import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';

class Snacks {
  static void successBar(String msg, BuildContext context) {
    var bar = SnackBar(
      backgroundColor: Colors.green,
      content: Text(
        msg,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: GlobalThemeData.lightColorScheme.onPrimary,
          fontFamily: "Lufga",
        )
      ),
      showCloseIcon: true,
    );
    ScaffoldMessenger.of(context).showSnackBar(bar);
  }

  static void failureBar(String msg, BuildContext context) {
    var bar = SnackBar(
      backgroundColor: GlobalThemeData.lightColorScheme.errorContainer,
      content: Text(
        msg,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: GlobalThemeData.lightColorScheme.onErrorContainer,
          fontFamily: "Lufga",
        )
      ),
      showCloseIcon: true,
    );
    ScaffoldMessenger.of(context).showSnackBar(bar);
  }

  static void infoBar(String msg, BuildContext context) {
    var bar = SnackBar(
      backgroundColor: GlobalThemeData.lightColorScheme.primaryFixed,
      content: Text(
        msg,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: GlobalThemeData.lightColorScheme.onPrimaryFixed,
          fontFamily: "Lufga",
        )
      ),
      showCloseIcon: true,
    );
    ScaffoldMessenger.of(context).showSnackBar(bar);
  }
}