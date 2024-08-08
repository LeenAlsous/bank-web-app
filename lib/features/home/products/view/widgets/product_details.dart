import 'package:bank_web_app/features/home/products/model/product_model.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel product;
  const ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height * 0.5;
    double width = double.maxFinite;
    bool isMobile = ScreenSizes.isMobile(context);
    return Flex(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      direction: isMobile? Axis.vertical : Axis.horizontal,
      children: [
        Flexible(child: Padding(
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.05),
          child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset(product.image, height: height, width: width, fit: BoxFit.cover,)),
        )),
        Flexible(
          child: Container(
            margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.05),
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(product.title),
                  Text(product.description),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const Text('Benefits:'),
                    for(int i = 0; i < product.benefits.length; ++i) Text(product.benefits[i]),
                  ],),
                  PrimaryButton(child: 'APPLY NOW', onPressed: (){},)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
