import 'dart:convert';

import 'package:http/http.dart' as http;

class RequestHelper {
  String url;
  static Future<dynamic> getRequest(url) async {
    http.Response response = await http.get(url);

    try {
      if (response.statusCode == 200) {
        String data = response.body;
        var decodedData = jsonDecode(data);
        return decodedData;
      } else {
        return 'failed';
      }
    } catch (e) {
      return 'failed';
    }
  }
}
