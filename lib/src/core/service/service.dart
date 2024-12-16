import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:furniture_app/src/core/domain/models/error_model.dart';
import 'package:furniture_app/src/core/domain/models/exception_model.dart';
import 'package:furniture_app/src/core/domain/models/general_model.dart';
import 'package:furniture_app/src/core/domain/models/product_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<ProductModel>> fetchUsers() async {
    try {
      final response = await _dio.get('https://dummyjson.com/products');
      if (response.statusCode == 200) {
        List<ProductModel> product = (response.data['products'] as  List<dynamic>).map((user) => ProductModel.fromJson(user)).toList();
        return product;

      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error: $e");
      }
      throw Exception('Error: $e');
    }
  }
}
