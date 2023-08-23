import 'dart:convert';
import 'package:http/http.dart' as http;
import 'http_service.dart';

class HttpServiceRequests implements HttpService {
  @override
  Future<dynamic> get(String uri) async {
    dynamic responseJson;

    try {
      final url = Uri.parse(uri);
      final response = await http.get(
        url,
      );
      responseJson = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return responseJson;
      } else {
        return responseJson;
      }
    } catch (e) {
      return responseJson;
    }
  }
}
