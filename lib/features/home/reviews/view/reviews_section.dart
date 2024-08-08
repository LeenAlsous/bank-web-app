import 'package:bank_web_app/features/home/reviews/view/widgets/reviews.dart';
import 'package:bank_web_app/features/home/reviews/view/widgets/reviews_header.dart';
import 'package:flutter/material.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.03),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        children: [
          const ReviewsHeader(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          const Reviews()
        ],
      ),
    );
  }
}
