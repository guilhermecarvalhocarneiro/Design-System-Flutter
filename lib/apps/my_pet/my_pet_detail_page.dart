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
        body: Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverAppBar(
              stretch: true,
              floating: true,
              pinned: true,
              snap: false,
              automaticallyImplyLeading: false,
              expandedHeight: 280,
              collapsedHeight: 280,
              backgroundColor: Colors.white,
              elevation: 0,
              titleSpacing: 0.3,
              centerTitle: false,
              flexibleSpace: FlexibleSpaceBar(
                background: MyPetDetailPageHead(
                  petName: widget.petName,
                ),
                stretchModes: const <StretchMode>[
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
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
