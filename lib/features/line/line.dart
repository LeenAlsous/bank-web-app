import 'package:bank_web_app/features/line/widgets/features_line.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
        FeaturesLineWidget(endText: 'Fast, easy loan application'),
    FeaturesLineWidget(endText: 'Flexible repayment options'),
    FeaturesLineWidget(endText: 'Competitive interest rates'),
    TimelineDivider(
    begin: 0.1,
    end: 0.3,
    thickness: 1,
    color: Color(0xFF9E9FA3),
    ),
    ]);
  }
}
