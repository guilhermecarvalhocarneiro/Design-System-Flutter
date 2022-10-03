import 'package:design_pinterest/core/mock_data/mock_data.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/nuvols_logger.dart';
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
  List<String> servicesChoice = <String>[];
  final servicesNotifier = ValueNotifier(0);

  void _serviceAddRemove(String serviceID) {
    try {
      if (servicesChoice.contains(serviceID)) {
        servicesChoice.remove(servicesChoice.where((element) => element == serviceID).first);
      } else {
        servicesChoice.add(serviceID);
      }
      servicesNotifier.value = servicesChoice.length;
    } catch (error, stackTrace) {
      NuvolsLogger().erro("-----ERRO-----", error, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    NuvolsLogger().debug("Build da App");
    return Container(
      padding: const EdgeInsets.only(top: kToolbarHeight),
      decoration: BoxDecoration(gradient: CustomBackgroundColors.gradientAppBarPetshop),
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                stretch: true,
                floating: true,
                pinned: true,
                snap: false,
                expandedHeight: 235,
                backgroundColor: CustomColors.yellowInitialBackground.withOpacity(0.85),
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
              PetShopListServices(addRemoveService: _serviceAddRemove),
            ],
          ),
          ValueListenableBuilder<int>(
            valueListenable: servicesNotifier,
            builder: (BuildContext _, dynamic value, Widget? child) {
              return Visibility(
                  visible: value != 0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 85,
                      width: MediaQuery.of(context).size.width * .85,
                      color: Colors.amberAccent,
                      child: Text(
                        "${value.toString()} Serviços selecionados",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}