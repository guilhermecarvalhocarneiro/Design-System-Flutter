import 'package:design_pinterest/core/colors.dart';
import 'package:flutter/material.dart';

ThemeData customThemeData = ThemeData(
  primaryColor: Colors.black26,
  fontFamily: 'Baloo2',
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: CustomColors.blackOne,
      fontWeight: FontWeight.bold,
      fontSize: 28,
    ),
    titleMedium: TextStyle(
      color: CustomColors.blackOne,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    titleSmall: TextStyle(
      color: CustomColors.grayOne,
      fontWeight: FontWeight.bold,
      fontSize: 12,
    ),
    displayMedium: TextStyle(
      color: CustomColors.grayTwo,
      fontWeight: FontWeight.w500,
      fontSize: 18,
    ),
    displaySmall: TextStyle(
      color: CustomColors.grayTwo,
      fontWeight: FontWeight.w300,
      fontSize: 16,
    ),

  ),
);
