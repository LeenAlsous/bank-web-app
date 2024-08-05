import 'package:bank_web_app/features/home/marketplace/model/marketplace_model.dart';

class MarketplaceController{
  static List<MarketplaceModel> marketplace = [
    const MarketplaceModel(title: 'Invoice manager', description: 'Simplify invoice payment and management', image: 'assets/invoice.png'),
    const MarketplaceModel(title: 'Budget planner', description: 'Enhance financial planning and budgeting', image: 'assets/saving.png'),
    const MarketplaceModel(title: 'Investment portfolio', description: 'Monitor and manage Investment portfolio', image: 'assets/Investment.png')
  ];
}