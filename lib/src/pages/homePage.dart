import 'package:e_crm/src/components/bannerComponent.dart';
import 'package:e_crm/src/components/productComponent.dart';
import 'package:e_crm/src/components/searchComponent.dart';
import 'package:e_crm/src/pages/cartPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.shop_outlined),
              onPressed: () => Get.to(CartPage()))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchComponent(),
            SizedBox(
              height: 12,
            ),
            BannerComponent(),
            SizedBox(
              height: 12,
            ),
            ProductComponent(),
          ],
        ),
      ),
    );
  }
}
