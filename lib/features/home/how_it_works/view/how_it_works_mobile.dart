import 'package:bank_web_app/features/home/how_it_works/controller/steps_controller.dart';
import 'package:bank_web_app/features/home/how_it_works/view/widgets/step_container_mobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HowItWorksMobile extends StatelessWidget {
  const HowItWorksMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StepsController>(
      init: StepsController(),
      builder:(controller) {
        return Column(
          children: controller.stepsModel.map((step) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: StepContainerMobile(controller: controller, number: step.stepNo),
          )).toList(),
        );
    },);
  }
}
