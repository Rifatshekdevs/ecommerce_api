import 'package:e_crm/models/cart.dart';
import 'package:e_crm/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final carts = RxList<Cart>();

  void addToCart({required Product product}) {
    final cart = Cart(
      id: product.id,
      title: product.title,
      price: product.price,
      image: product.image,
      quantity: 1,
    );
    carts.add(cart);
  }
}
