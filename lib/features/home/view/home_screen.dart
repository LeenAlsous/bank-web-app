import 'package:bank_web_app/features/offering/view/widgets/offering_container.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:bank_web_app/widgets/button.dart';
import 'package:bank_web_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    bool isDesktop = ScreenSizes.isDesktop(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFF161727),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(80))),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 0, left: 50, right: 50),
              child: Column(
                children: [
                  const CustomAppBar(),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Wrap(children: [
                        Text(
                          'Unlock your Business potential with Xenon bank',
                          textScaler: TextScaler.linear(
                              ScaleSize.textScaleFactor(context)),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ])),
                  Flex(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    direction: isMobile ? Axis.vertical : Axis.horizontal,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            const Text(
                              'Achieve business success with Xenon bank. Our comprehensive financial solutions help unlock your business potential and take your vision to the next level',
                              style: TextStyle(color: Colors.white),
                            ), Button(
                              child: 'APPLY NOW',
                              onPressed: () {},
                            ),
                            !isDesktop ? Container() :Row(children: [
                              Image.asset('assets/Award_Badge.png', width: MediaQuery.sizeOf(context).width * 0.04),
                              const Text('2023 the world\'s best digital bank', style: TextStyle(color: Colors.white),)
                            ],)
                          ],
                        ),
                      ),
                      Flexible(child: Image.asset('assets/header_image.png')),
                      Flexible(child: Image.asset('assets/features.png'))
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Row(
            children: [
              OfferingContainer(),
              OfferingContainer(),
              OfferingContainer(),
            ],
          )
        ],
      ),
    );
  }
}
