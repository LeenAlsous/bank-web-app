import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';


class FeaturesLineWidget extends StatelessWidget {
  final String endText;
  const FeaturesLineWidget({Key? key, required this.endText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.1,
        endChild: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              endText,
              style: const TextStyle(color: Colors.white)),
        ),
        indicatorStyle: IndicatorStyle(
          indicator: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFF5DC76C),
                blurRadius: 6,
              ),
            ],
            color: Color(0xFF5DC76C),
            shape: BoxShape.circle,
          ),
        ),),
        afterLineStyle: line(),
        beforeLineStyle: line());
  }

  LineStyle line(){
    return const LineStyle(thickness: 1, color: Color(0xFF9E9FA3));
  }
}
