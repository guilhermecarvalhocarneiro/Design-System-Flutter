import 'package:design_pinterest/core/mock_data/mock_data.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/widgets/petshop_detail_page_head.dart';
import '../core/widgets/petshop_listservices.dart';
import '../core/widgets/petshop_white_container.dart';

class PetShopDetailPageSliver extends StatefulWidget {
  static const String routeName = "PetShopDetailPageSliver";
  const PetShopDetailPageSliver({super.key});

  @override
  State<PetShopDetailPageSliver> createState() => _PetShopDetailPageSliverState();
}

class _PetShopDetailPageSliverState extends State<PetShopDetailPageSliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          stretch: true,
          floating: true,
          pinned: true,
          snap: false,
          expandedHeight: 250,
          backgroundColor: CustomColors.yellowFinalBackground,
          title: Text(
            NuvolsCoreMockData.gerarPalavra(),
          ),
          flexibleSpace: const FlexibleSpaceBar(
            background: PetShopHead(),
            stretchModes: <StretchMode>[
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],
          ),
        ),
        const PetShopWhiteCardOverHeader(),
        const PetShopListServices(),
      ],
    ));
  }
}
