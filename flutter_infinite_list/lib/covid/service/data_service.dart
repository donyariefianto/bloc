import 'package:http/http.dart' as http;

class DataServices {
  Future<http.Response?> getPosts() async {
    const _baseUrl = 'jsonplaceholder.typicode.com';
    try {
      final url = Uri.https(_baseUrl, '/posts/');
      final response = await http.get(url);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}

class DataService {
  Future<http.Response?> getPosts() async {
    const _baseUrl = 'api.covid19api.com';
    try {
      final url = Uri.https(_baseUrl, '/countries');
      final response = await http.get(url);
      // print(response.body);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
