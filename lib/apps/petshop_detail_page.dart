import 'package:flutter/material.dart';

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
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .12, bottom: 55),
            child: const CustomScrollView(
              slivers: [
                PetShopWhiteCardOverHeader(),
              ],
            ),
          ),
          Positioned(
            top: 25,
            left: 8,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.chevron_left,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
