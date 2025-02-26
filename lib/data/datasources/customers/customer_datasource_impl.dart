import 'dart:convert';
import 'dart:io';
import 'package:autocyr/data/datasources/customers/customer_datasource.dart';
import 'package:autocyr/data/excepts/handler.dart';
import 'package:autocyr/data/helpers/preferences.dart';
import 'package:autocyr/data/network/api_client.dart';

class CustomerDataSourceImpl implements CustomerDataSource {

  final ApiClient _apiClient;

  CustomerDataSourceImpl(this._apiClient);

  @override
  Future getPiece(String id) async {
    String token = await Preferences().getString("token");
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };

    try {
      final response = await _apiClient.get(path: "customer/get-piece/$id", headers: headers);

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
  Future getPieces(Map<String, dynamic> params) async {
    String token = await Preferences().getString("token");
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };

    try {
      final response = await _apiClient.getWithParams(path: "customer/get-pieces", params: params, headers: headers);

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
  Future updateAdresses(Map<String, dynamic> body) async {
    String token = await Preferences().getString("token");
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };

    try {
      final response = await _apiClient.post(path: "customer/update-addresses", headers: headers, body: body);

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
  Future getTypePieces(Map<String, dynamic> params) async {
    String token = await Preferences().getString("token");
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };

    try {
      final response = await _apiClient.getWithParams(path: "customer/get-type-pieces", params: params, headers: headers);

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
  Future getSubcategoryPieces(Map<String, dynamic> params) async {
    String token = await Preferences().getString("token");
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };

    try {
      final response = await _apiClient.getWithParams(path: "customer/get-subcategory-pieces", params: params, headers: headers);

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
  Future createCommande(Map<String, dynamic> body) async {
    String token = await Preferences().getString("token");
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };

    try {
      final response = await _apiClient.post(path: "customer/create-commande", headers: headers, body: body);

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
  Future getCommandes(Map<String, dynamic> params) async {
    String token = await Preferences().getString("token");
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };

    try {
      final response = await _apiClient.getWithParams(path: "customer/get-commandes", params: params, headers: headers);

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