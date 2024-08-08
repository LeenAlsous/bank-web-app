import 'package:bank_web_app/constants/app_colors.dart';
import 'package:bank_web_app/features/home/how_it_works/controller/steps_controller.dart';
import 'package:bank_web_app/features/home/how_it_works/model/step_model.dart';
import'package:flutter/material.dart';

class StepIndex extends StatelessWidget {
  final int number;
  final StepsController controller;
  const StepIndex({Key? key, required this.controller, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StepModel step = controller.stepsModel[number - 1];
    return InkWell(
      onTap: (){
        controller.changeStep(step.stepNo);
      },
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.02),
            decoration: BoxDecoration(color: controller.currentStep == step.stepNo ? const Color(AppColors.appGreen) : const Color(AppColors.secondaryGreen), borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.sizeOf(context).height * 0.05,
            height: MediaQuery.sizeOf(context).height * 0.05,
            child: Center(child: Text(step.stepNo.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: controller.currentStep == step.stepNo ? AppColors.appBlack : const Color(AppColors.appGreen)), textAlign: TextAlign.center)),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(step.title, style: const TextStyle(fontWeight: FontWeight.bold),),
                Flexible(child: Text(step.subtitle))
              ],
            ),
          )
        ],
      ),
    );
  }
}
