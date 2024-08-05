import 'package:bank_web_app/features/home/marketplace/controller/marketplace_controller.dart';
import 'package:bank_web_app/features/home/marketplace/view/widgets/marketplace_container.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:bank_web_app/widgets/secondary_button.dart';
import 'package:flutter/material.dart';

class MarketplaceSection extends StatelessWidget {
  const MarketplaceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    bool isDesktop = ScreenSizes.isDesktop(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Marketplace for business tools', textScaler: TextScaler.linear(TextScale.textScaleFactor(context))),
              if(!isMobile) SecondaryButton(text: 'View more tools', onPressed: (){},)
            ],
          ),
          Flexible(
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              direction: !isDesktop ? Axis.vertical : Axis.horizontal,
              children: MarketplaceController.marketplace.map((marketTool) => MarketplaceContainer(marketplaceModel: marketTool)).toList(),
            ),
          ),
          if(isMobile) SecondaryButton(text: 'View more tools', onPressed: (){},)
        ],
      ),
    );
  }
}
