import 'package:flutter/material.dart';

class AppDimensions {
  static double baseSize = 8;

  // ==
  static SizedBox vSpace(int multiplier) =>
      SizedBox(height: baseSize * multiplier);
  //==
  static SizedBox hSpace(int multiplier) =>
      SizedBox(width: baseSize * multiplier);
}
