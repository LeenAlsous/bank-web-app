import 'package:bank_web_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SocialMediaContainer extends StatelessWidget {
  final String social;
  const SocialMediaContainer({Key? key, required this.social}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: MediaQuery.sizeOf(context).height * 0.1,
      //width: MediaQuery.sizeOf(context).width * 0.1,
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(20), border: Border.all(color: AppColors.appWhite)),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Center(child: Text(social, style: const TextStyle(color: AppColors.appWhite),)),
      ),
    );
  }
}
