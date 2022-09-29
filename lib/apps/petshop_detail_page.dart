import 'package:design_pinterest/core/widgets/page_header.dart';
import 'package:flutter/material.dart';

import '../core/widgets/labels.dart';
import '../core/widgets/petshop_detail_page_head.dart';
import '../core/widgets/petshop_white_container.dart';

class PetShopDetailPage extends StatefulWidget {
  static const String routeName = "PetShopDetailPage";
  const PetShopDetailPage({super.key});

  @override
  State<PetShopDetailPage> createState() => _PetShopDetailPageState();
}

class _PetShopDetailPageState extends State<PetShopDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const PetShopHead(),
          Container(
            margin: const EdgeInsets.only(top: kToolbarHeight * .70, bottom: 55),
            child: const CustomScrollView(
              slivers: [
                NuvolsPageHeader(padding: 12,),
                PetShopWhiteCardOverHeader(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
