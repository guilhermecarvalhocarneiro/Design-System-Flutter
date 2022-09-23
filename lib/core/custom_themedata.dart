import 'package:design_pinterest/core/colors.dart';
import 'package:flutter/material.dart';

ThemeData customThemeData = ThemeData(
  primaryColor: Colors.black26,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: CustomColors.blackOne,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    titleMedium: TextStyle(
      color: CustomColors.blackOne,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    titleSmall: TextStyle(
      color: CustomColors.blackOne,
      fontWeight: FontWeight.bold,
      fontSize: 8,
    ),
  ),
);
