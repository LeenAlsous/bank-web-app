import 'package:bank_web_app/features/home/products/controller/product_controller.dart';
import 'package:bank_web_app/features/home/products/view/widgets/product_container.dart';
import 'package:bank_web_app/features/home/products/view/widgets/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) {
        int length = controller.products.length;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              for(var index = 0; index < length; ++index)
                ProductContainer(controller: controller, index: index)
            ],),
            ProductDetails(product: controller.products[controller.currentId - 1]),
          ],
        );
      }
    );
  }
}
