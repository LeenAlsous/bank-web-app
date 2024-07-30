import 'package:bank_web_app/features/home/impact/controller/reviews_controller.dart';
import 'package:bank_web_app/features/home/impact/view/widgets/impact_header.dart';
import 'package:bank_web_app/features/home/impact/view/widgets/reviews_container.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    GlobalKey lastKey = GlobalKey();
    GlobalKey firstKey = GlobalKey();
    return GetBuilder<ReviewsController>(
        init: ReviewsController(),
        builder: (controller) {
          int length = controller.reviewsList.length;
          return Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int index = 0; index < length; ++index) ReviewsContainer(reviewModel: controller.reviewsList[index], key: index == 0 ? firstKey : index == length -1 ? lastKey : null,)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: isMobile
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Scrollable.ensureVisible(firstKey.currentContext!,
                          duration: const Duration(seconds: 2),
                          curve: Easing.emphasizedDecelerate);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(child: Icon(Icons.arrow_back)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Scrollable.ensureVisible(lastKey.currentContext!,
                          duration: const Duration(seconds: 1),
                          curve: Easing.emphasizedDecelerate);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(child: Icon(Icons.arrow_forward)),
                    ),
                  ),
                  const Spacer(),
                  if (!isMobile) SecondaryButton(text: 'See all', onPressed: (){},)
                ],
              )
            ],
          );
        });
  }
}
