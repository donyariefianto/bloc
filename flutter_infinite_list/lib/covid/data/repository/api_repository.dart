// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_infinite_list/covid/data/models/covid_model.dart';

import '../../service/data_service.dart';

class ApiRepository {
  final DataService dataService;
  ApiRepository({
    required this.dataService,
  });

  // Future<List<Post>> getPostsList() async {
  //   final response = await dataService.getPosts();
  //   if (response!.statusCode == 200) {
  //     final json = jsonDecode(response.body) as List;
  //     final posts = json.map((e) => Post.fromJson(e)).toList();
  //     return posts;
  //   } else {
  //     throw Exception('Failed to load Posts');
  //   }
  // }
  Future<List<Covid>> getPostsList() async {
    final response = await dataService.getPosts();
    if (response!.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final posts = json.map((e) => Covid.fromJson(e)).toList();
      return posts;
    } else {
      throw Exception('Failed to load Posts');
    }
  }
}
