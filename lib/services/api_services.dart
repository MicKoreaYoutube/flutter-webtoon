import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final baseURL = "https://webtoon-crawler.nomadcoders.workers.dev";
  final today = "today";

  void getTodayToons() async {
    final url = Uri.parse("$baseURL/$today");

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      return;
    }
    throw Error();
  }
}
