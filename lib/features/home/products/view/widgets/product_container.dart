import 'package:bank_web_app/features/home/products/controller/product_controller.dart';
import 'package:bank_web_app/features/home/products/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final ProductController controller;
  final int index;
  const ProductContainer({Key? key, required this.controller, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductModel product = controller.products[index];
    return InkWell(
            onTap: () {
              controller.currentId = product.id;
              controller.update();
            },
            child: Container(
              margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.02),
              width: MediaQuery.sizeOf(context).width / 4,
              height: MediaQuery.sizeOf(context).height * 0.1,
              decoration: BoxDecoration(
                  color: controller.currentId == product.id
                      ? Colors.white : const Color(0xFFF6F9FB),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: controller.currentId == product.id
                          ? const Color(0xFF61CD81)
                          : Colors.white)),
              child: Center(
                child: Text(
                  product.title,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
  }
}
