import 'package:flutter/material.dart';

import 'apps/home_page.dart';
import 'core/custom_themedata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design Pinterest',
      theme: customThemeData,
      home: const HomePage(),
    );
  }
}
