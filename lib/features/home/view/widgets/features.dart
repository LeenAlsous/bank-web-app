import 'package:bank_web_app/helper/screen_sizes.dart';
import 'package:bank_web_app/helper/text_scale.dart';
import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    Axis axis = isMobile ? Axis.vertical : Axis.horizontal;
    double margin = MediaQuery.sizeOf(context).height * 0.02;
    return Container(
      margin: !isMobile ? EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.02) : null,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Flex(
        mainAxisSize: MainAxisSize.min,
        direction: axis,
        children: [
          Flex(
            direction: Axis.vertical,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Empower your business with our cutting-edge features',
                textScaler: TextScaler.linear(
                    TextScale.textScaleFactor(context, maxTextScaleFactor: 2)),
              ),
              Container(
                margin: EdgeInsets.all(margin),
                  color: Colors.cyan,
                  height: MediaQuery.sizeOf(context).height * 0.25, width: !isMobile ? MediaQuery.sizeOf(context).width *0.54 : null,),
              Flex(
                direction: axis,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.all(margin),
                    color: Colors.lightGreen,
                      height: MediaQuery.sizeOf(context).height * 0.3, width: !isMobile ? MediaQuery.sizeOf(context).width * 0.3 : null,),
                  Container(
                    margin: EdgeInsets.all(margin),
                    color: Colors.lightBlueAccent,
                      height: MediaQuery.sizeOf(context).height * 0.3, width: !isMobile? MediaQuery.sizeOf(context).width * 0.2 : null,),
                ],
              ), //flex 3
            ],
          ), // flex 1,
          Flex(mainAxisSize: MainAxisSize.min, direction: Axis.vertical, children: [
            Flexible(child: Container(margin: EdgeInsets.all(margin), height: MediaQuery.sizeOf(context).height * 0.3, color: Colors.amberAccent, width: !isMobile ? MediaQuery.sizeOf(context).width * 0.4 : null,)),
            Flexible(child: Container(margin: EdgeInsets.all(margin), height: MediaQuery.sizeOf(context).height * 0.3, color: Colors.pinkAccent, width: !isMobile ? MediaQuery.sizeOf(context).width * 0.4 : null,))
          ],)
        ],
      ), //outer flex
    );
  }
}
