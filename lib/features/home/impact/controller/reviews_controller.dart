import 'package:bank_web_app/features/home/impact/model/review_model.dart';
import 'package:get/get.dart';

class ReviewsController extends GetxController {
  List<ReviewModel> reviewsList = [
    const ReviewModel(
        title: 'Transformative Experience',
        description:
            'Working with Xenon Bank was a transformative experience for my business. The tailored solutions and friendly staff exceeded my expectations. I highly recommend them.',
        name: 'Cody Fisher',
        image: 'assets/profile_1.png',
        job: 'Small business owner'),
    const ReviewModel(
        title: 'Expert Support',
        description:
            'The expert support I received from Xenon Bank was unmatched. They went above and beyond to help me reach my financial goals for my business.',
        name: 'Jenny Wilson',
        image: 'assets/profile_1.png',
        job: 'Entrepreneur'),
    const ReviewModel(
        title: 'Outstanding Service',
        description:
            'Xenon Bank provided outstanding service. Their attention to detail and dedication to helping my business thrive was truly impressive.',
        name: 'Ariana Montgomery',
        image: 'assets/profile_1.png',
        job: 'Startup founder'),
    const ReviewModel(
        title: 'Financial Growth',
        description:
            'Thanks to Xenon Bank, my business experienced significant financial growth. Their advice and support were invaluable.',
        name: 'Liam Smith',
        image: 'assets/profile_1.png',
        job: 'Retail store owner'),
    const ReviewModel(
        title: 'Personalized Solutions',
        description:
            'he personalized solutions offered by Xenon Bank perfectly matched my business needs. Their team is professional and knowledgeable.',
        name: 'Emma Johnson',
        image: 'assets/profile_1.png',
        job: 'Marketing firm CEO'),
  ];
}
