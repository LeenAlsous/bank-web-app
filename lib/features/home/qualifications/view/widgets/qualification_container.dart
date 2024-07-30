import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:flutter/material.dart';

class QualificationContainer extends StatelessWidget {
  final String qualification;

  const QualificationContainer({Key? key, required this.qualification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    return Container(
      margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.01),
      height: MediaQuery.sizeOf(context).height * 0.12,
      width: isMobile ? null : MediaQuery.sizeOf(context).width * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFF6F8FB)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle_outline, color: Color(0xFF61CD81)),
            isMobile ? Text(qualification, style: const TextStyle(color: Colors.black)) : Flexible(child: Text(qualification, style: const TextStyle(color: Colors.black)))
          ],
        ),
      ),
    );
  }
}
