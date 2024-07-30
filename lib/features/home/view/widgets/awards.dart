import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:flutter/material.dart';

class AwardsSection extends StatelessWidget {
  const AwardsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFF161727)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Flex(
          mainAxisSize: MainAxisSize.min,
          direction: isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            Text('Awards \n& recognition', style: TextStyle(color: Colors.white), textScaler: TextScaler.linear(TextScale.textScaleFactor(context, maxTextScaleFactor: 2)),),
            Flexible(
              child: Row(
                children: [
                  Flexible(child: Image.asset('assets/award1.png')),
                  Flexible(child: Image.asset('assets/award2.png')),
                  Flexible(child: Image.asset('assets/award3.png')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
