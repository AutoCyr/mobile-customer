import 'dart:convert';
import 'package:autocyr/data/datasources/commons/common_datasource.dart';
import 'package:autocyr/data/excepts/handler.dart';
import 'package:autocyr/data/network/api_client.dart';

class CommonDataSourceImpl implements CommonDataSource {

  final ApiClient _apiClient;

  CommonDataSourceImpl(this._apiClient);

  @override
  Future getAutoMakes() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    try {
      final response = await _apiClient.get(path: "commons/auto-makes", headers: headers);

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
  Future getCountries() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    try {
      final response = await _apiClient.get(path: "commons/countries", headers: headers);

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
  Future getBikeMakes() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    try {
      final response = await _apiClient.get(path: "commons/bike-makes", headers: headers);

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
  Future getPartnerTypes() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    try {
      final response = await _apiClient.get(path: "commons/partner-types", headers: headers);

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
  Future getAutoTypes() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    try {
      final response = await _apiClient.get(path: "commons/auto-types", headers: headers);

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
  Future getEnginCategories() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    try {
      final response = await _apiClient.get(path: "commons/engin-categories", headers: headers);

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
  Future getEnginTypes() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    try {
      final response = await _apiClient.get(path: "commons/engin-types", headers: headers);

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
  Future getMoteurTypes() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    try {
      final response = await _apiClient.get(path: "commons/moteur-types", headers: headers);

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