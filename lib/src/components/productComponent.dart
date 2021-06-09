import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_crm/controller/productController.dart';
import 'package:e_crm/src/pages/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductComponent extends StatelessWidget {
  final _productController = Get.put(ProductController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    _productController.initProducts();
    return Obx(
      () => _productController.products.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Container(
              margin: EdgeInsets.all(12),
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: _productController.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: .80,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final item = _productController.products[index];
                  return GestureDetector(
                    onTap: () {
                      Get.to(ProductDetails(
                        product: item,
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: HexColor('f4f4f4'),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: '${item.id}',
                            child: Container(
                              width: 250,
                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png',
                                placeholder: (context, url) =>
                                    Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                          Spacer(),
                          Center(
                            child: Container(
                              width: 200,
                              child: Text(
                                '${item.title}',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Center(child: Text('\$${item.price} ')),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
