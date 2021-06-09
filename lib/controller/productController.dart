import 'package:dio/dio.dart';
import 'package:e_crm/models/product.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProductController extends GetxController {
  final _dio = Dio();
  final products = RxList<Product>();

  initProducts() async {
    try {
      final result = await _dio.get('https://fakestoreapi.com/products');

      final List<Product> productsData = result.data
          .map((json) => Product.fromJson(json))
          .toList()
          .cast<Product>();

      products.addAll(productsData);
    } catch (e) {
      print(e);
    }
  }
}
