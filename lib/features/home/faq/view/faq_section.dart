import 'package:bank_web_app/features/home/faq/controller/faq_controller.dart';
import 'package:bank_web_app/features/home/faq/view/widgets/category_container.dart';
import 'package:bank_web_app/features/home/faq/view/widgets/question_answer_container.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:bank_web_app/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class FaqSection extends StatelessWidget {
  const FaqSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Frequently asked questions',
          textScaler: TextScaler.linear(
              TextScale.textScaleFactor(context, maxTextScaleFactor: 3)),
        ),
        GetBuilder<FaqController>(
            init: FaqController(),
            builder: (controller) {
              int categoriesLength = controller.categories.length;
              int questionsLength = controller
                  .categories[controller.currentCategory].qAndA.length;
              return Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int categoryIndex = 0;
                            categoryIndex < categoriesLength;
                            ++categoryIndex)
                          CategoryContainer(
                              controller:
                                  controller, index: categoryIndex,)
                      ],
                    ),
                  ),
                  Wrap(
                    children: [
                      for (int index = 0; index < questionsLength; ++index)
                        QuestionAnswerContainer(
                            controller: controller, index: index,)
                    ],
                  ),
                ],
              );
            }),
        SecondaryButton(
          text: 'View more',
          onPressed: () {},
        )
      ],
    );
  }
}
