import 'package:bank_web_app/features/home/faq/view/faq_section.dart';
import 'package:bank_web_app/features/home/how_it_works/view/how_it_works_web.dart';
import 'package:bank_web_app/features/home/products/view/products_section.dart';
import 'package:bank_web_app/features/home/qualifications/view/qualification_section.dart';
import 'package:bank_web_app/features/home/reviews/view/reviews_section.dart';
import 'package:bank_web_app/features/home/stories/view/stories_section.dart';
import 'package:bank_web_app/features/home/view/widgets/awards.dart';
import 'package:bank_web_app/features/home/view/widgets/line/line.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:bank_web_app/widgets/primary_button.dart';
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
        children: [
          // todo: move the header section to its own directory
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFF161727),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(80))),
            child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 0, left: MediaQuery.sizeOf(context).width * 0.01, right: MediaQuery.sizeOf(context).width * 0.01),
              child: Column(
                children: [
                  const CustomAppBar(),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Wrap(children: [
                        Text(
                          'Unlock your Business potential with Xenon bank',
                          textScaler: TextScaler.linear(
                              TextScale.textScaleFactor(context)),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Achieve business success with Xenon bank. Our comprehensive financial solutions help unlock your business potential and take your vision to the next level',
                              style: TextStyle(color: Colors.white),
                            ), PrimaryButton(
                              child: 'APPLY NOW',
                              onPressed: () {},
                            ),
                            if(!isMobile) SizedBox(height: MediaQuery.sizeOf(context).height * 0.5,),
                            if (isDesktop) Row(children: [
                              Image.asset('assets/Award_Badge.png', width: MediaQuery.sizeOf(context).width * 0.04),
                              const Text('2023 the world\'s best digital bank', style: TextStyle(color: Colors.white),)
                            ],)
                          ],
                        ),
                      ),
                      Flexible(child: Image.asset('assets/header_image.png')),
                      const Flexible(child: Line()),
                    ],
                  ),
                ],
              ),
            ),
          ),
         Padding(
           padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.03, top: MediaQuery.sizeOf(context).height * 0.1),
           child: RichText(text: const TextSpan(text: 'Financial freedom with ', children: [TextSpan(text: 'Xenon', style: TextStyle(color: Color(0xFF61CD81), decoration: TextDecoration.underline))]), textScaler: TextScaler.linear(
               TextScale.textScaleFactor(context, maxTextScaleFactor: 3)), textAlign: TextAlign.center,),
         ),
          const Text('Our offerings are tailored to meet the unique needs and challenges of each business, and are designed to provide the funding and support necessary to help businesses reach their full potential.', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF2B4157)),),
          const ProductsSection(),
          // const Features(), needs another solution
          const ReviewsSection(),
          const AwardsSection(),
          const StoriesSection(),
          const QualificationSection(),
          const FaqSection(),
          const HowItWorksWeb()
        ],
      ),
    );
  }
}
