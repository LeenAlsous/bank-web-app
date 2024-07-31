import 'package:flutter/cupertino.dart';

class StepModel{
  final int stepNo;
  final String title;
  final String subtitle;
  final Widget content;

  StepModel({required this.stepNo, required this.title, required this.subtitle, required this.content});
}