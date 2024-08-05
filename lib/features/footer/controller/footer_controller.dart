import 'package:bank_web_app/features/footer/model/footer_model.dart';

class FooterController{
  static List<FooterModel> footer = [
    const FooterModel(title: 'Company', sections: [
      'Home',
      'About us',
      'Products',
      'Why choose us',
      'Impact on society',
      'Testimonials'
    ]),
    const FooterModel(title: 'Explore', sections: [
      'FAQs',
      'How it works',
      'Qualifications',
      'Tool kits',
      'Marketplace'
    ]),
    const FooterModel(title: 'Quick links', sections: [
      'Apply now',
      'Contact us',
      'Blog',
      'Privacy policy',
      'Terms of Service'
    ])
  ];
}