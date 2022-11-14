import 'package:design_pinterest/apps/my_pet/my_pet_detail_page.dart';
import 'package:design_pinterest/apps/petshop_detail_page.dart';
import 'package:design_pinterest/apps/petshop_detail_page_sliver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case PetShopDetailPage.routeName:
        return CupertinoPageRoute(builder: (_) => const PetShopDetailPage());
      case PetShopDetailPageSliver.routeName:
        return CupertinoPageRoute(builder: (_) => const PetShopDetailPageSliver());
      case MyPetDetailPage.routeName:
        if (args is String) {
          return CupertinoPageRoute(
            builder: (_) => MyPetDetailPage(
              petName: args.toString(),
            ),
          );
        }
        return CupertinoPageRoute(
          builder: (_) => const MyPetDetailPage(
            petName: '',
          ),
        );
      default:
        return CupertinoPageRoute(builder: (_) => const Scaffold());
    }
  }
}
