import 'dart:convert';

import 'package:http/http.dart' as http;

class Handling {
  Map<String, dynamic> handleErrorResponse(http.Response response) {

    switch (response.statusCode) {
      case 404:
        var data = json.decode(response.body);
        return data;
      case 422:
        var data = json.decode(response.body);
        return data;
      case 500:
        var data = {
          "error": true,
          "message": "Une erreur serveur est survenue"
        };
        return data;
      default:
        var data = {
          "error": true,
          "message": "Une erreur est survenue. Code: ${response.statusCode}"
        };
        return data;
    }
  }
}