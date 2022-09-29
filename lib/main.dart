import 'package:design_pinterest/core/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'apps/home_page.dart';
import 'core/custom_themedata.dart';
import 'core/labels.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      title: nomeAplicacao,
      theme: customThemeData,
      home: const HomePage(),
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
