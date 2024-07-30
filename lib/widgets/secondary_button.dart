import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const SecondaryButton({Key? key, this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: onPressed, style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.white,
        side: const BorderSide(color: Color(0xFF61CD81)), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), child: Text(text, style: const TextStyle(color: Colors.black)));
  }
}
