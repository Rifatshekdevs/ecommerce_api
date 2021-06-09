import 'package:e_crm/controller/cartController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  final _cartController = Get.put(CartController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carts'),
      ),
      body: ListView(
        children: [
          Obx(
            () => _cartController.carts.isEmpty
                ? Center(child: Text('No carts'))
                : ListView.builder(
                    itemCount: _cartController.carts.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (BuildContext context, int index) {
                      final item = _cartController.carts[index];
                      return ListTile(
                        title: Text('${item.title}'),
                        leading: Icon(Icons.shop_outlined),
                        trailing: Text('${item.quantity}'),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
