import 'package:bank_web_app/features/home/products/model/product_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductController extends GetxController {
  int currentId = 1;
  List<ProductModel> products = [
    const ProductModel(
        title: 'Business line of credit',
        description:
            'A flexible and convenient way to access funds for your business needs. Use it as you need it and only pay interest on what you borrow, Perfect for unexpected expenses.',
        benefits: [
          'Easy access to funds as and when needed',
          'Flexible repayment options',
          'Interest only on funds borrowed'
        ],
        id: 1,
      image: 'assets/people002.jpeg'
    ),
    const ProductModel(
        title: 'Equipment Financing',
        description:
            'A practical solution for acquiring the necessary tools and machinery for your business without upfront costs. Spread out your payments to manage your cash flow effectively.',
        benefits: [
          'Affordable monthly payments',
          'Preserve working capital',
          'Ownership at the end of the term',
          'Potential tax advantages'
        ],
        id: 2,
      image: 'assets/people02.jpg'
    ),
    const ProductModel(
        title: 'Merchant Services',
        description:
            'Streamline your payment processing with our comprehensive merchant services. Accept various payment methods and manage transactions efficiently, all with competitive rates.',
        benefits: [
          'Accept credit/debit cards and mobile payments',
          'Secure and fast transactions',
          'Detailed reporting and analytics'
        ],
        id: 3,
      image: 'assets/people3.jpeg'
    ),
  ];
}
