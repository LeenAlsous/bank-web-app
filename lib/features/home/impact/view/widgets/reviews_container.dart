import 'package:bank_web_app/features/home/impact/model/review_model.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:flutter/material.dart';

class ReviewsContainer extends StatelessWidget {
  final ReviewModel reviewModel;
  const ReviewsContainer({Key? key, required this.reviewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    bool isDesktop = ScreenSizes.isDesktop(context);
    return Container(
      width: isMobile ? MediaQuery.sizeOf(context).width / 1.25 : MediaQuery.sizeOf(context).width / 3,
      height: MediaQuery.sizeOf(context).height * 0.45,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (!isDesktop) const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.star, color: Colors.amber,),
              Text('5.0 ', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('rating')
            ],),
            Text(reviewModel.title, style: const TextStyle(fontWeight: FontWeight.bold),),
            Text(reviewModel.description, style: const TextStyle(color: Color(0xFF2B4157))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(reviewModel.image, width: MediaQuery.sizeOf(context).height * 0.1, height: MediaQuery.sizeOf(context).height * 0.1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(reviewModel.name, style: const TextStyle(fontWeight: FontWeight.bold),),
                        Text(reviewModel.job)
                      ],
                    ),
                  ],
                ),
                if (isDesktop) const Row(
                  children: [
                  Icon(Icons.star, color: Colors.amber,),
                  Text('5.0 ', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('rating')
                ],)
              ],
            )
          ],
        ),
      ),
    );
  }
}
