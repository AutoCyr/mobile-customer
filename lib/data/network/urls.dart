class Urls {

  static const String baseUrl = "https://services.autocyr.com/api/";
  static const String imageUrl = "https://services.autocyr.com/public/images/";

  String constructUrl(String baseUrl, String path, Map<String, dynamic> params) {
    final queryParams = params.map((key, value) => MapEntry(key, value.toString()));

    Uri uri = Uri.parse(baseUrl+path).replace(queryParameters: queryParams);
    return uri.toString();
  }
}