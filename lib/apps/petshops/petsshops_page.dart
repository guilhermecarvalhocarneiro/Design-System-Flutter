import 'package:design_pinterest/core/widgets/custom_listitens.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/page_header.dart';

class PetShopsListPage extends StatefulWidget {
  const PetShopsListPage({super.key});

  @override
  State<PetShopsListPage> createState() => _PetShopsListPageState();
}

class _PetShopsListPageState extends State<PetShopsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: kToolbarHeight * .70, bottom: 55),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: const CustomScrollView(
        slivers: [
          NuvolsPageHeader(
            titlePage: "Pet´s parceiros",
          ),
          NuvolsCustomListItens(),
        ],
      ),
    ));
  }
}
