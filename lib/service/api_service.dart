import 'dart:convert';

import 'package:bloc_cart/features/home/model/ProductModel.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String BASEURL =
      'https://api.jsonbin.io/v3/b/673c50f2e41b4d34e456c4a6?meta=false';
  Future<List<Productmodel>> getItems() async {
    await Future.delayed(Duration(seconds: 2));
    var response = await http.get(Uri.parse(BASEURL));
    List<dynamic> list = json.decode(response.body);
    List<Productmodel> product =
        list.map((json) => Productmodel.fromJson(json)).toList();

    return product;
  }
}
