import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String child;
  final void Function()? onPressed;
  const PrimaryButton({Key? key, required this.child, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF61CD81), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))), child: Text(child, style: const TextStyle(color: Colors.black),));
  }
}
