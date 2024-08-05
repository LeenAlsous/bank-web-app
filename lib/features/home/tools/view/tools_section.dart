import 'package:bank_web_app/constants/app_colors.dart';
import 'package:bank_web_app/features/home/tools/controller/tool_controller.dart';
import 'package:bank_web_app/features/home/tools/view/widets/tool_conatiner.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:flutter/material.dart';

class ToolsSection extends StatelessWidget {
  const ToolsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(color: AppColors.appWhite, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Text('Streamline operations with our tools', textScaler: TextScaler.linear(TextScale.textScaleFactor(context)),),
          Wrap(
            alignment: WrapAlignment.center,
            children:
              ToolController.tools.map((tool) => ToolContainer(tool: tool)).toList(),
          ),
        ],
      ),
    );
  }
}
