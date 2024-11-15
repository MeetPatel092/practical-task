import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHelper {
  static const String apiUrl = "https://api.univia.cc/api/ProductList";

  static Future<List<dynamic>> fetchProductList() async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "RegisterId": "1",
        "Iswishlist": "",
        "Pagination": "1",
        "CategoryId": "",
        "SubCategoryId": "",
        "BrandId": "",
        "PriceFilter": "",
        "SearchProductName": "",
        "LanguageId": ""
      }),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return json['Result'] ?? [];
    } else {
      print("API Error: ${response.reasonPhrase}");
      return [];
    }
  }
}
