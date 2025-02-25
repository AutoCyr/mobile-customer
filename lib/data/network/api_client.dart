import 'dart:convert';

import 'package:autocyr/data/network/urls.dart';
import 'package:http/http.dart' as http;

class ApiClient {

  Future getWithParams({
    required String path,
    required Map<String, dynamic> params,
    Map<String, String>? headers,
  }) async {
    String url = Urls().constructUrl(Urls.baseUrl, path, params);
    Uri uri = Uri.parse(url);
    return await http.get(uri, headers: headers);
  }

  Future<http.Response> get({
    required String path,
    Map<String, String>? headers,
  }) async {
    return await http.get(Uri.parse(Urls.baseUrl+path), headers: headers);
  }

  Future<http.Response> post({
    required String path,
    Map<String, String>? headers,
    required Map<String, dynamic> body
  }) async {
    return await http.post(Uri.parse(Urls.baseUrl+path), headers: headers, body: json.encode(body));
  }

  Future<http.Response> postMultipart({
    required String path,
    Map<String, String>? headers,
    required Map<String, String> body,
    required String filepath,
    required String name
  }) async {
    var request = http.MultipartRequest('POST', Uri.parse(Urls.baseUrl+path))..fields.addAll(body)..headers.addAll(headers!)..files.add(
        await http.MultipartFile.fromPath(name, filepath)
    );
    return await http.Response.fromStream(await request.send());
  }

  Future<http.Response> put({
    required String path,
    Map<String, String>? headers,
    required Map<String, dynamic> body
  }) async {
    return await http.put(Uri.parse(Urls.baseUrl+path), headers: headers, body: json.encode(body));
  }

  Future<http.Response> delete({
    required String path,
    Map<String, String>? headers,
    required Map<String, dynamic> body
  }) async {
    return await http.delete(Uri.parse(Urls.baseUrl+path), headers: headers, body: json.encode(body));
  }

}