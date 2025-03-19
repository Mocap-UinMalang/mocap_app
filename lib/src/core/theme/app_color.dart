import 'package:flutter/material.dart';

class AppColor {
  static Color backgroundColor = Color(0xFFffffff);

  // TEXT
  static Color textAccent = Color(0xFF4086A4);
  static Color textSecondary = Color(0xFF666969);

  // CARD
  static Color cardAccent = Color(0xFFEDFCF5);
  static Color cardSecondary = Color(0xFFF6F6F6);
  static Color cardPrimary = Color(0XFFFFFFFF);
  // GRADIENT
  static Gradient primaryGradient = LinearGradient(colors: [Color(0xFF41B2E2), Color(0xFF406EA5)], begin: Alignment.topLeft, end: Alignment.bottomRight);

  // SHADOW
  static Color imageShadow = Color(0xFF171D1C).withAlpha((0.16 * 255).toInt());
  static Color cardShadow = Color(0xFF171D1C).withAlpha((0.06 * 255).toInt());
  static Color bottomNavbarShadow = Color(0xFF000000).withAlpha((0.25 * 255).toInt());
}
