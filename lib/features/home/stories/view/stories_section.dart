import 'package:bank_web_app/features/home/stories/controller/stories_controller.dart';
import 'package:bank_web_app/features/home/stories/view/widgets/stories_container.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:bank_web_app/widgets/secondary_button.dart';
import 'package:flutter/material.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    double height = MediaQuery.sizeOf(context).height * 0.33;
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Real stories, real results',
                textScaler: TextScaler.linear(
                    TextScale.textScaleFactor(context, maxTextScaleFactor: 2)),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              SecondaryButton(
                text: 'View all success stories',
                onPressed: () {},
              ),
            ],
          ),
              Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                      flex: isMobile ? 1 : 2,
                      child: StoriesContainer(
                        width: width,
                        height: height * 2.1,
                          story: StoriesController.stories[0])),
                  Flexible(
                      child: Flex(
                    direction: Axis.vertical,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                          child: StoriesContainer(
                            width: width,
                            height: height,
                              story: StoriesController.stories[1])),
                      if (!isMobile)
                        Flexible(
                            child: StoriesContainer(
                                height: height,
                                width: width,
                                story: StoriesController.stories[2])),
                    ],
                  )),
                ],
              ),
          if (isMobile)
            SecondaryButton(
              text: 'View all success all stories',
              onPressed: () {},
            )
        ],
      ),
    );
  }
}
