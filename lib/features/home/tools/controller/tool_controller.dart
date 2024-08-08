import 'package:bank_web_app/features/home/tools/model/tool_model.dart';
import 'package:flutter/material.dart';

class ToolController {
  static List<ToolModel> tools = [
    const ToolModel(
        title: 'Loan Calculator',
        icon: Icons.calculate_rounded,
        subtitle: 'Easily estimate your monthly repayments',
        tips: [
          'Input loan amount and interest rate',
          'Get estimate of monthly and total repayment',
          'Compare different loan options'
        ]),
    const ToolModel(
        title: 'Financial Statement Analyser',
        icon: Icons.add_chart,
        subtitle: 'Understand your business\'s financial health',
        tips: [
          'Input financial statements',
          'Generate financial ratios and analysis',
          'Understand the strengths and weaknesses of your business'
        ]),
    const ToolModel(
        title: 'Credit Score Simulator',
        icon: Icons.electric_meter,
        subtitle: 'Simulate different scenarios to improve your score',
        tips: [
          'Input current credit information',
          'Simulate different scenarios',
          'Get tips on how to improve credit score'
        ]),
    const ToolModel(
        title: 'Loan Comparison Tool',
        icon: Icons.scale,
        subtitle: 'Find the best loan for your business',
        tips: [
          'Compare loan options from multiple lenders',
          'Get details on interest rates, fees and repayment terms',
          'Compare the overall costs of different loan options'
        ])
  ];
}
