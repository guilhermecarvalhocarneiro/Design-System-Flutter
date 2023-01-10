import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();

  static const Color black = Color(0xff37404A);
  static const Color blackOne = Color(0xff0c1222);
  static const Color gray = Color(0xff57636f);
  static const Color grayOne = Color(0xff6b7787);
  static const Color grayTwo = Color(0xff818c98);
  static const Color grayThree = Color(0xff99a5b1);
  static const Color yellow = Color(0xfff0c26b);
  static const Color greenCardIndex = Color(0xffb9c3ba);
  static const Color mediumSeaGreenCardIndex = Color(0xffd5e4c3);
  static const Color yellowCardIndex = Color(0xfff7f6cf);
  static const Color vanillaIceCardIndex = Color(0xfff5e2e4);
  static const Color chatelleCardIndex = Color(0xffbeb4c5);
  static const Color bluePetshopBackgroundCard = Color(0xff9FC9F3);
  static const Color backgroundButtonOrange = Color(0xffff9433);
  static const Color navigatorButtomActive = Color(0xffff9433);
  static const Color navigatorButtomInactive = Color(0xffcccccc);
  static const Color labelText = Color(0xff636363);
  static const Color yellowInitialBackground = Color(0xffFFD074);
  static const Color yellowFinalBackground = Color(0xffff9433);
  static const Color blueInitialBackground = Color(0xffD8E3E9);
  static const Color blueFinalBackground = Color(0xffa5d4de);
  static const Color textBluePetShopCardService = Color(0xff425c81);
  static const Color elevateButtonServiceSchedule = Color(0xffC0A27C);
  static const Color elevateButtonServiceScheduleOrange = Color(0xffff9934);
  static const Color scheduleCalendarBackground = Color(0xff9FC9F3);
  static const Color scheduleCalendarMonthNameColor = Color(0xff9FC9F3);
  static const Color scheduleCalendarDayUnselectedColor = Color(0xff9FC9F3);
  static const Color scheduleCalendarDaySelectedBackgroundColor = Colors.orangeAccent;
  // Cores para o Advanced Calendar
  static const Color scheduleAdvancedCalendarTodayBackground = Color(0xff9FC9F3);
  static const Color scheduleAdvancedCalendarBackground = Color(0xff9FC9F3);
  static const Color scheduleAdvancedCalendarMonthNameColor = Color(0xff9FC9F3);
  static const Color scheduleAdvancedCalendarDayUnselectedColor = Color(0xff9FC9F3);
  static const Color scheduleAdvancedCalendarDaySelectedBackgroundColor = Colors.orangeAccent;
}

class CustomBackgroundColors {
  CustomBackgroundColors._();
  static LinearGradient get gradientPetshopCard {
    return const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        CustomColors.blueInitialBackground,
        CustomColors.blueFinalBackground,
      ],
    );
  }

  static LinearGradient get gradientAppBarPetshop {
    return const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        CustomColors.blueInitialBackground,
        CustomColors.blueFinalBackground,
      ],
    );
  }

  /// Gradiente para o cartão do Pet na tela
  /// de listagem de Pet's
  static LinearGradient get gradientMyPetCardImageEffect {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        CustomColors.black.withOpacity(0.05),
        CustomColors.black.withOpacity(0.99),
      ],
    );
  }

  /// Gradiente para o cartão do Pet na tela
  /// de listagem de Pet's
  static LinearGradient get gradientMyPetDetailPageBody {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.white.withOpacity(0.8),
        CustomColors.blueFinalBackground.withOpacity(0.2),
      ],
    );
  }
}
