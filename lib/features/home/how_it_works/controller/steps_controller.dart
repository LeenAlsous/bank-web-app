import 'package:bank_web_app/features/home/how_it_works/model/step_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepsController extends GetxController{
  int currentStep = 1;

  List<StepModel> stepsModel = [
    StepModel(stepNo: 1, title: 'Step 1: Submit your application', subtitle: 'Provide us with some basic information about your business and financials to get started', content: const Icon(Icons.edit), ),
    StepModel(stepNo: 2, title: 'Step 2: Review and approval', subtitle: 'Our credit committee will review your application and work with you to ensure all necessary documents are provided', content: const Icon(Icons.search)),
    StepModel(stepNo: 3, title: 'Step 3: Finalize your loan', subtitle: 'Complete the online checkout and receive your funds as soon as the same day*', content: const Icon(Icons.checklist))
  ];

  void changeStep(int stepNum){
    currentStep = stepNum;
    update();
  }
}