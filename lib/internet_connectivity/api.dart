import 'package:dio/dio.dart';

import 'internet_connectivity_model.dart';

class ProductService {
  final Dio _dio = Dio();

 Future<InternetConnectiviyModel> fetchProduct() async {
  try {
    final response = await _dio.get('https://dummyjson.com/products/1');

    if (response.statusCode == 200) {
      // Parse the JSON response and create a InternetConnectiviyModel object
      final Map<String, dynamic> responseData = response.data;
      print('response final $responseData');
      return InternetConnectiviyModel.fromJson(responseData);
    } else {
      throw Exception('Failed to load product');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}
}