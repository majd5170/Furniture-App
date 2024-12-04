import 'package:dio/dio.dart';
import 'package:furniture_app/src/core/domain/models/error_model.dart';
import 'package:furniture_app/src/core/domain/models/exception_model.dart';
import 'package:furniture_app/src/core/domain/models/general_model.dart';
import 'package:furniture_app/src/core/domain/models/product_model.dart';


abstract class Service {
  Dio dio = Dio();
}

class NerdsService extends Service {
  Future<GeneralModel> getAllProducts() async {
    try {
      Response response = await dio.get('https://dummyjson.com/products');
      print(response.data);
      if (response.statusCode == 200) {
        ProductModel Product = ProductModel.fromMap(response.data);
        print(Product);
        return Product;
      } else {
        return ErrorModel(errorMessage: response.headers.map.toString());
      }
    } catch (error) {
      return ExceptionModel(exceptionMessage: error.toString());
    }
  }
  }