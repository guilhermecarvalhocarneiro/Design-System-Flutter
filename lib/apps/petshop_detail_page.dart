import 'package:design_pinterest/core/widgets/custom_backbuttom_head.dart';
import 'package:flutter/material.dart';

import '../core/widgets/petshop_detail_page_head.dart';
import '../core/widgets/petshop_listservices.dart';
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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const PetShopHead(),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .12,
              bottom: 55,
            ),
            child: const CustomScrollView(
              slivers: [
                PetShopWhiteCardOverHeader(),
                PetShopListServices()
              ],
            ),
          ),
          const NuvolsBackButtomHead(),
        ],
      ),
    );
  }
}
