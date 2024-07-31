import 'package:bank_web_app/features/home/how_it_works/controller/steps_controller.dart';
import 'package:bank_web_app/features/home/how_it_works/view/widgets/step_index.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HowItWorksWeb extends StatelessWidget {
  const HowItWorksWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      //crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Three steps to funding your future',
          textScaler: TextScaler.linear(TextScale.textScaleFactor(context)),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        GetBuilder<StepsController>(
          init: StepsController(),
          builder: (controller) {
            return Row(
              children: [
                Flexible(child: SizedBox(width: MediaQuery.sizeOf(context).width / 2,child: controller.stepsModel[controller.currentStep - 1].content)),
                Flexible(
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: controller.stepsModel
                        .map((step) =>
                            StepIndex(step: step, controller: controller))
                        .toList(),
                  ),
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
