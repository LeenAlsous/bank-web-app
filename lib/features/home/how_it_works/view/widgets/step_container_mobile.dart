import 'package:bank_web_app/constants/app_colors.dart';
import 'package:bank_web_app/features/home/how_it_works/controller/steps_controller.dart';
import 'package:bank_web_app/features/home/how_it_works/model/step_model.dart';
import 'package:bank_web_app/features/home/how_it_works/view/widgets/step_index.dart';
import 'package:flutter/material.dart';

class StepContainerMobile extends StatelessWidget {
  final int number;
  final StepsController controller;
  const StepContainerMobile({Key? key, required this.controller, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StepModel step = controller.stepsModel[number - 1];
    return InkWell(
      onTap: (){
        controller.changeStep(number);
      },
      child: Container(
        decoration: controller.currentStep == number ? BoxDecoration(
          color: AppColors.appWhite,
          borderRadius: BorderRadius.circular(20)
        ) : null,
        child: Column(
          children: [
            StepIndex(controller: controller, number: number,),
            Visibility(visible: controller.currentStep == number, child: SizedBox(height: MediaQuery.sizeOf(context).height * 0.2, child: step.content))
          ],
        ),
      ),
    );
  }
}
