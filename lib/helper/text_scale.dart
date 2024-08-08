import 'dart:math';

import 'package:flutter/material.dart';

class TextScale {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 4}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1200) * maxTextScaleFactor;
    return  min(val, maxTextScaleFactor);
  }
}