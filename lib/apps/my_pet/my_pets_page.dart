import 'package:design_pinterest/core/widgets/labels.dart';
import 'package:design_pinterest/core/widgets/mypets_customlistitens.dart';
import 'package:design_pinterest/core/widgets/page_header.dart';
import 'package:flutter/material.dart';

class MyPetsPage extends StatefulWidget {
  static const String routeName = "MyPetsPage";

  const MyPetsPage({Key? key}) : super(key: key);

  @override
  State<MyPetsPage> createState() => _MyPetsPageState();
}

class _MyPetsPageState extends State<MyPetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: kToolbarHeight * .70, bottom: 55),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: const CustomScrollView(
          slivers: [
            NuvolsPageHeader(),
            TitlePetPage(),
            NuvolsMyPetsCustomlistitens(),
          ],
        ),
      ),
    );
  }
}
