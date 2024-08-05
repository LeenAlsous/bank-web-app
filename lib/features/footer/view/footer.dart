import 'package:bank_web_app/constants/app_colors.dart';
import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bool isMobile = ScreenSizes.isMobile(context);
    bool isDesktop = ScreenSizes.isDesktop(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Flex(
            direction: !isDesktop ? Axis.vertical : Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/green_logo.png'),
                  const Text(
                      'Xenon is specialized in providing business loans to small and medium sized businesses in their local area'),
                  Container(
                    width: !isDesktop ? MediaQuery.sizeOf(context).width * 0.5 : null,
                    decoration: BoxDecoration(
                        color: AppColors.appWhite,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:  Row(
                        children: [
                          Icon(Icons.mail, color: Color(AppColors.appGreen)),
                          Text('Support@xenonbank.com')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                  Container(
                    width: !isDesktop ? MediaQuery.sizeOf(context).width * 0.5 : null,
                    decoration: BoxDecoration(
                        color: AppColors.appWhite,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Color(AppColors.appGreen)),
                          Text('+91 1234567890')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('Company'),
                  Flex(
                    direction: !isDesktop ? Axis.horizontal : Axis.vertical,
                    children: const [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Home'),
                          Text('About us'),
                          Text('Products')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Why choose us'),
                          Text('Impact on society'),
                          Text('Testimonials')
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('Explore'),
                  Flex(
                    direction: !isDesktop ? Axis.horizontal : Axis.vertical,
                    children: const [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('FAQs'),
                          Text('How it works'),
                          Text('Qualifications')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Tool kits'),
                          Text('Market place'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Quick links'),
                  Flex(
                    direction: !isDesktop ? Axis.horizontal : Axis.vertical,
                    children: const [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Apply now'),
                          Text('Contact us'),
                          Text('Blog')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Privacy policy'),
                          Text('Terms of service'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Divider(),
          const Center(child: Text('© xenon bank 2023, all rights reserved.'))
        ],
      ),
    );
  }
}
