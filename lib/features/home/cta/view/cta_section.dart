import 'package:bank_web_app/constants/app_colors.dart';
import 'package:bank_web_app/features/home/cta/view/widgets/social_media_container.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:bank_web_app/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class CtaSection extends StatelessWidget {
  const CtaSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    return Container(
      margin:
          isMobile ? const EdgeInsets.all(20) : const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: const Color(AppColors.darkBlue),
          borderRadius: isMobile
              ? BorderRadius.circular(20)
              : const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Flex(
              direction: isMobile ? Axis.vertical : Axis.horizontal,
              children: [
                if (isMobile)
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/horizontal_people.jpg'))
                else
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/vertical_people.jpg')),
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        'Ready to grow your business?',
                        textScaler:
                            TextScaler.linear(TextScale.textScaleFactor(context)),
                        style: const TextStyle(color: AppColors.appWhite),
                      ),
                    ),
                    const Text(
                      'Apply for your business loan today!',
                      style: TextStyle(color: AppColors.appWhite),
                    ),
                    Flex(
                      direction: isMobile ? Axis.vertical : Axis.horizontal,
                      children: [
                        PrimaryButton(
                          child: 'Apply now',
                          onPressed: () {},
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Contact us',
                              style: TextStyle(color: Color(AppColors.appGreen)),
                            ))
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: isMobile ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
              children: [
                if (!isMobile)
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Support@xenonbank.com',
                        style: TextStyle(color: Color(AppColors.appGreen)),
                      ),
                      Text(
                        'Care@xenonbank.com',
                        style: TextStyle(color: Color(AppColors.appGreen)),
                      ),
                    ],
                  ),
                const Row(
                  children: [
                    SocialMediaContainer(social: 'Telegram'),
                    SocialMediaContainer(social: 'Twitter'),
                    SocialMediaContainer(social: 'WhatsApp'),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
