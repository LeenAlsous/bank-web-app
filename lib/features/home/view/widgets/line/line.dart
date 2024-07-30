import 'package:bank_web_app/features/home/view/widgets/line/widgets/features_line.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
        children: [
      const FeaturesLineWidget(endText: 'Fast, easy loan application'),
      const FeaturesLineWidget(endText: 'Flexible repayment options'),
      const FeaturesLineWidget(endText: 'Competitive interest rates'),
      const TimelineDivider(
        begin: 0.1,
        end: 0.4,
        thickness: 1,
        color: Color(0xFF9E9FA3),
      ),
      TimelineTile( alignment: TimelineAlign.manual, lineXY:0.4, hasIndicator: false, beforeLineStyle: LineStyle(thickness: 1, color: Color(0xFF9E9FA3)),),
      const TimelineDivider(
        begin: 0.2,
        end: 0.6,
        thickness: 1,
        color: Color(0xFF9E9FA3),
      ),
      SizedBox(

        width: MediaQuery.sizeOf(context).width * 0.3,
        child: Stack(
          children: [
            CircleAvatar(child: Image.asset('assets/profile_2.png')),
            Positioned(left: 28, child: CircleAvatar(child: Image.asset('assets/profile_02.png'))),
            Positioned(left: 56, child: CircleAvatar(child: Image.asset('assets/profile_3.png'))),
            const Positioned(left: 95,child: FittedBox(child: Text('+12M \nActive users', style: TextStyle(color: Colors.white),)))
          ],
        ),
      )
    ]);
  }
}
