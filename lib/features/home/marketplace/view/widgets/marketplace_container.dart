import 'package:bank_web_app/constants/app_colors.dart';
import 'package:bank_web_app/features/home/marketplace/model/marketplace_model.dart';
import'package:flutter/material.dart';

class MarketplaceContainer extends StatelessWidget {
  final MarketplaceModel marketplaceModel;
  const MarketplaceContainer({Key? key, required this.marketplaceModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColors.appWhite),
      margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.01),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset(marketplaceModel.image))),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(AppColors.background)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(child: Text(marketplaceModel.title, style: const TextStyle(fontWeight: FontWeight.bold))),
                  Flexible(child: Text(marketplaceModel.description)),
                  Container(
                    decoration: BoxDecoration(color: const Color(AppColors.appGreen), borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(Icons.arrow_forward),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
