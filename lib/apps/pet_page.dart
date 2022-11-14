import 'package:design_pinterest/core/widgets/labels.dart';
import 'package:design_pinterest/core/widgets/mypets_customlistitens.dart';
import 'package:design_pinterest/core/widgets/page_header.dart';
import 'package:flutter/material.dart';

class PetPage extends StatefulWidget {
  static const String routeName = "PetPage";

  const PetPage({Key? key}) : super(key: key);

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
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
