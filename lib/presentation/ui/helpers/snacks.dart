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
      closeIconColor: GlobalThemeData.lightColorScheme.onPrimary
    );
    ScaffoldMessenger.of(context).showSnackBar(bar);
  }

  static void failureBar(String msg, BuildContext context) {
    var bar = SnackBar(
      backgroundColor: GlobalThemeData.lightColorScheme.error,
      content: Text(
        msg,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: GlobalThemeData.lightColorScheme.onError,
          fontFamily: "Lufga",
        )
      ),
      showCloseIcon: true,
      closeIconColor: GlobalThemeData.lightColorScheme.onError
    );
    ScaffoldMessenger.of(context).showSnackBar(bar);
  }

  static void infoBar(String msg, BuildContext context) {
    var bar = SnackBar(
      backgroundColor: GlobalThemeData.lightColorScheme.onPrimary,
      content: Text(
        msg,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: GlobalThemeData.lightColorScheme.primary,
          fontFamily: "Lufga",
        )
      ),
      showCloseIcon: true,
      closeIconColor: GlobalThemeData.lightColorScheme.primary
    );
    ScaffoldMessenger.of(context).showSnackBar(bar);
  }
}