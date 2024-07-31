import 'package:bank_web_app/helper/text_scale.dart';
import 'package:flutter/material.dart';

class Trustpilot extends StatelessWidget {
  const Trustpilot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: const Color(0xFF61CD81),
              size: MediaQuery.sizeOf(context).height * 0.07,
            ),
            Text(
              'Trustpilot',
              textScaler: TextScaler.linear(
                  TextScale.textScaleFactor(context, maxTextScaleFactor: 2)),
            )
          ],
        ),
        Row(
          children: [
            for(int i = 0; i < 5; ++i)
            Container(
              margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.01),
              width: MediaQuery.sizeOf(context).height * 0.05,
              height: MediaQuery.sizeOf(context).height * 0.05,
              color: const Color(0xFF61CD81),
              child: const Icon(
                Icons.star,
                color: Color(0xFFF6F8FB),
              ),
            ),
          ],
        )
      ],
    );
  }
}
