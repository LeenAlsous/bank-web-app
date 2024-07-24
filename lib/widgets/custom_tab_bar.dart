import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(tabs: [
      Text('Home', style: TextStyle(color: Colors.white)),
      Text('Products', style: TextStyle(color: Colors.white)),
      Text('Features', style: TextStyle(color: Colors.white)),
      Text('How to apply', style: TextStyle(color: Colors.white)),
      Text('Tools', style: TextStyle(color: Colors.white)),
      Text('More', style: TextStyle(color: Colors.white)),
    ]);
  }
}
