import 'package:design_pinterest/core/colors.dart';
import 'package:design_pinterest/core/widgets/grid_options_my_pet_detail_page.dart';
import 'package:design_pinterest/core/widgets/mypet_detail_card_over_header.dart';
import 'package:design_pinterest/core/widgets/mypet_detail_page_head.dart';
import 'package:flutter/material.dart';

class MyPetDetailPage extends StatefulWidget {
  final String petName;
  static const String routeName = "MyPetDetailPage";

  const MyPetDetailPage({Key? key, required this.petName}) : super(key: key);

  @override
  State<MyPetDetailPage> createState() => _MyPetDetailPageState();
}

class _MyPetDetailPageState extends State<MyPetDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            margin: const EdgeInsets.only(bottom: kToolbarHeight + 15),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  stretch: true,
                  floating: true,
                  pinned: true,
                  snap: false,
                  expandedHeight: 235,
                  backgroundColor: CustomColors.blueFinalBackground,
                  iconTheme: const IconThemeData(color: Colors.black54),
                  titleSpacing: 0.3,
                  centerTitle: false,
                  title: Text(
                    widget.petName,
                    style: const TextStyle(color: Colors.black54),
                  ),
                  flexibleSpace: const FlexibleSpaceBar(
                    background: MyPetDetailPageHead(),
                    stretchModes: <StretchMode>[
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                      StretchMode.fadeTitle,
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: MyPetDetailPageCardOverHeader(
                    petName: widget.petName,
                  ),
                ),
                const GridOptionsMyPetDetailPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
