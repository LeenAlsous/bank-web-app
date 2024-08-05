import 'package:bank_web_app/constants/app_colors.dart';
import 'package:bank_web_app/features/home/tools/model/tool_model.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/widgets/secondary_button.dart';
import 'package:flutter/material.dart';

class ToolContainer extends StatelessWidget {
  final ToolModel tool;
  const ToolContainer({Key? key, required this.tool}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    return Container(
      margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.02),
      //height: MediaQuery.sizeOf(context).height * 0.3,
      width: isMobile ? null : MediaQuery.sizeOf(context).width / 2.5,
      decoration: BoxDecoration(
        color: const Color(AppColors.background),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(tool.icon, color: Color(AppColors.appGreen), size: MediaQuery.sizeOf(context).height * 0.08,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tool.title, style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(tool.subtitle),
                    ],
                  ),
                )
              ],
            ),
            for(int index = 0; index < tool.tips.length; ++index) Row(
              children: [
                Icon(Icons.check_circle, size: MediaQuery.sizeOf(context).height * 0.02,),
                Flexible(child: Text(tool.tips[index]))
              ],
            ),
            const SecondaryButton(text: 'Learn more')
          ],
        ),
      ),
    );
  }
}
