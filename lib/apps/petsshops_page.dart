import 'package:design_pinterest/core/widgets/custom_listitens.dart';
import 'package:design_pinterest/core/widgets/labels.dart';
import 'package:flutter/material.dart';

import '../core/widgets/page_header.dart';

class PetshopPage extends StatefulWidget {
  const PetshopPage({super.key});

  @override
  State<PetshopPage> createState() => _PetshopPageState();
}

class _PetshopPageState extends State<PetshopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: kToolbarHeight * .70, bottom: 55),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: const CustomScrollView(
          slivers: [
            NuvolsPageHeader(),
            TitlePetshopPage(),
            NuvolsCustomListItens()
          ],
        ),
    )
    );
  }
}
