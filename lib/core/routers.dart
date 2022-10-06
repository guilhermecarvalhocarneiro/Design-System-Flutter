import 'package:design_pinterest/apps/petshop_detail_page.dart';
import 'package:design_pinterest/apps/petshop_detail_page_sliver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case PetShopDetailPage.routeName:
        return CupertinoPageRoute(builder: (_) => const PetShopDetailPage());
      case PetShopDetailPageSliver.routeName:
        return CupertinoPageRoute(builder: (_) => const PetShopDetailPageSliver());
      default:
        return CupertinoPageRoute(builder: (_) => const Scaffold());
    }
  }
}
