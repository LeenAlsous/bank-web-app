import 'package:bank_web_app/features/home/impact/view/widgets/trustpilot.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:flutter/material.dart';

class ImpactHeader extends StatelessWidget {
  const ImpactHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Flex(
        direction: isMobile ? Axis.vertical : Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Empowering communities'),
                Text(
                  'Our positive social impact',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaler: TextScaler.linear(TextScale.textScaleFactor(
                      context,
                      maxTextScaleFactor: 3)),
                ),
                const Text(
                    'Our lending solutions are designed to help businesses achieve their goals and drive economic growth in their local area'),
              ],
            ),
          ),
          Container(
            decoration: isMobile
                ? BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10))
                : null,
            child: Flex(
              mainAxisSize: MainAxisSize.min,
              direction: !isMobile ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
              children: [
                const Flexible(
                  child: Trustpilot()
                ),
                Flex(
                  direction: !isMobile ? Axis.horizontal : Axis.vertical,
                  children: [
                    const Text('TrustScore 5.0'),
                    isMobile ? Container() : const Text(' | '),
                    const Text('3,724 reviews')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
