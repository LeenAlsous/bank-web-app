import 'package:bank_web_app/constants/app_colors.dart';
import 'package:bank_web_app/features/home/faq/controller/faq_controller.dart';
import 'package:bank_web_app/features/home/faq/model/question_answer_model.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionAnswerContainer extends StatelessWidget {
  final FaqController controller;
  final int index;

  const QuestionAnswerContainer({Key? key, required this.controller, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    QuestionAnswerModel qAndA = controller.categories[controller.currentCategory].qAndA[index];
    return InkWell(
            onTap: () {
              controller.selectAnswer(qAndA);
            },
            child: Container(
              margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.01),
              width: !isMobile ? MediaQuery.sizeOf(context).width / 2.5 : null,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: qAndA.isSelected
                      ? AppColors.appWhite
                      : const Color(AppColors.background),
                  border: Border.all(
                      color: qAndA.isSelected
                          ? const Color(AppColors.appGreen)
                          : CupertinoColors.systemFill)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(children: [
                      isMobile
                          ? Text(
                              qAndA.question,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )
                          : Flexible(
                              child: Text(
                              qAndA.question,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )),
                      qAndA.isSelected
                          ? const Icon(Icons.arrow_circle_left_sharp,
                              color: Color(AppColors.appGreen))
                          : const Icon(CupertinoIcons.arrow_down_left_circle,
                              color: Color(AppColors.appGreen))
                    ]),
                    // todo: add animation
                    Visibility(visible: qAndA.isSelected, child: Text(qAndA.answer)),
                  ],
                ),
              ),
            ),
          );
  }
}
