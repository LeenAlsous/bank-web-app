import 'package:bank_web_app/features/home/qualifications/controller/qualifications_controller.dart';
import 'package:bank_web_app/features/home/qualifications/view/widgets/qualification_container.dart';
import 'package:bank_web_app/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class QualificationSection extends StatelessWidget {
  const QualificationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bool isMobile = ScreenSizes.isMobile(context);
    int length = QualificationsController.qualifications.length;
    List<String> qualifications = QualificationsController.qualifications;
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Wrap(
              //direction: isMobile ? Axis.vertical : Axis.horizontal,
              //alignment: WrapAlignment.spaceEvenly,
              children: [
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.2, child: const Center(child: Text('Do I qualify?', style: TextStyle(fontWeight: FontWeight.bold)))),
                for(int index = 0; index < length; ++index) QualificationContainer(qualification: qualifications[index],),
                PrimaryButton(child: 'Apply now', onPressed: (){},)
              ],
            )
      ),
    );
  }
}
