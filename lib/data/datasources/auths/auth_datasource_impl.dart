import 'dart:convert';
import 'dart:io';
import 'package:autocyr/data/datasources/auths/auth_datasource.dart';
import 'package:autocyr/data/excepts/handler.dart';
import 'package:autocyr/data/helpers/preferences.dart';
import 'package:autocyr/data/network/api_client.dart';

class AuthDataSourceImpl implements AuthDataSource {

  final ApiClient _apiClient;

  AuthDataSourceImpl(this._apiClient);

  @override
  Future login(Map<String, dynamic> body) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      final response = await _apiClient.post(path: "auth/login", headers: headers, body: body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = json.decode(response.body);
        return data;
      } else {
        return Handling().handleErrorResponse(response);
      }
    } catch (e) {
      var error = {
        "error": true,
        "message": "Une erreur serveur est survenue",
        "except": e.toString()
      };
      return error;
    }
  }

  @override
  Future logout() async {
    await Preferences().clear();
  }

  @override
  Future register(Map<String, dynamic> body) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      final response = await _apiClient.post(path: "auth/create-client", headers: headers, body: body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = json.decode(response.body);
        return data;
      } else {
        return Handling().handleErrorResponse(response);
      }
    } catch(e) {
      var error = {
        "error": true,
        "message": "Une erreur serveur est survenue",
        "except": e.toString()
      };
      return error;
    }
  }

  @override
  Future updateFCMToken(Map<String, dynamic> body) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      final response = await _apiClient.post(path: "auth/update-fcm", headers: headers, body: body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = json.decode(response.body);
        return data;
      } else {
        return Handling().handleErrorResponse(response);
      }
    } catch(e) {
      var error = {
        "error": true,
        "message": "Une erreur serveur est survenue",
        "except": e.toString()
      };
      return error;
    }
  }

  @override
  Future getProfile() async {
    String token = await Preferences().getString("token");
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };

    try {
      final response = await _apiClient.get(path: "auth/get-profile", headers: headers);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = json.decode(response.body);
        return data;
      } else {
        return Handling().handleErrorResponse(response);
      }
    } catch(e) {
      var error = {
        "error": true,
        "message": "Une erreur serveur est survenue",
        "except": e.toString()
      };
      return error;
    }
  }

}