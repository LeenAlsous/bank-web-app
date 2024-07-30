import 'package:bank_web_app/features/home/impact/view/widgets/impact_header.dart';
import 'package:bank_web_app/features/home/impact/view/widgets/reviews.dart';
import 'package:flutter/material.dart';

class ImpactSection extends StatelessWidget {
  const ImpactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.03),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ImpactHeader(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          const Reviews()
        ],
      ),
    );
  }
}
