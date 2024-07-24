import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/widgets/button.dart';
import 'package:bank_web_app/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    return Container(
      color: const Color(0xFF161727),
      child: DefaultTabController(
        length: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(flex: 2, fit: FlexFit.loose, child: Image.asset('assets/green_logo.png')),
            isMobile ? Expanded(flex: 5,child: Container()):const Expanded(flex: 5, child: CustomTabBar()),
            Flexible(fit: FlexFit.loose,flex: 2, child: Button(child: 'APPLY NOW', onPressed: (){},)),
          ],
        ),
      ),
    );
  }
}
