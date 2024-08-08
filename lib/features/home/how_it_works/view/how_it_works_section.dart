import 'package:bank_web_app/features/home/how_it_works/view/how_it_works_mobile.dart';
import 'package:bank_web_app/features/home/how_it_works/view/how_it_works_web.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:flutter/material.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    return isMobile ? const HowItWorksMobile() : const HowItWorksWeb();
  }
}
