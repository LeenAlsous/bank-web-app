import 'package:flutter/material.dart';

class OfferingContainer extends StatelessWidget {
  const OfferingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width / 4,
      decoration: BoxDecoration(color: const Color(0xFFF6F9FB), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.white)),
      child: const Text('Business line of credit'),
    );
  }
}
