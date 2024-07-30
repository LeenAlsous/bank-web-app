import 'package:bank_web_app/features/constants/app_colors.dart';
import 'package:bank_web_app/features/home/faq/controller/faq_controller.dart';
import 'package:bank_web_app/features/home/faq/model/question_answer_model.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class QuestionAnswerContainer extends StatelessWidget {
  final QuestionAnswerModel qA;
  const QuestionAnswerContainer({Key? key, required this.qA}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    return GetBuilder<FaqController>(
      init: FaqController(),
      builder: (controller) {
        return InkWell(
          onTap: (){controller.selectAnswer(qA);},
          child: Container(
            margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.01),
            width: !isMobile ? MediaQuery.sizeOf(context).width / 3 : null,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: qA.isSelected ? AppColors.appWhite: const Color(AppColors.background), border: Border.all(color: qA.isSelected ? const Color(AppColors.appGreen) : CupertinoColors.systemFill)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      isMobile ? Text(qA.question, style: const TextStyle(fontWeight: FontWeight.bold),) : Flexible(child: Text(qA.question, style: const TextStyle(fontWeight: FontWeight.bold),)),
                      qA.isSelected ?  const Icon(Icons.arrow_circle_left_sharp, color: Color(AppColors.appGreen)) :const Icon(CupertinoIcons.arrow_down_left_circle, color: Color(AppColors.appGreen))
                    ]
                  ),
                  // todo: add animation
                  Visibility(visible: qA.isSelected, child: Text(qA.answer)),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
