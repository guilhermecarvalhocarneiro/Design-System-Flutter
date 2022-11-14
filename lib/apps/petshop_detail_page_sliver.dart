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
  List<String> servicesChoiceName = <String>[];
  var servicesPrice = 0.0;
  final servicesNotifier = ValueNotifier(0);

  /// Método para adicionar ou remover os serviços da lista de serviços
  /// contratados
  void _serviceAddRemove(String serviceID, String serviceName, double servicePrice) {
    try {
      if (servicesChoice.contains(serviceID)) {
        servicesChoice.remove(
          servicesChoice.where((element) => element == serviceID).first,
        );
        servicesChoiceName.remove(
          servicesChoiceName.where((element) => element == serviceName).first,
        );
        servicesPrice -= servicePrice;
      } else {
        servicesChoice.add(serviceID);
        servicesChoiceName.add(serviceName);
        servicesPrice += servicePrice;
      }
      servicesNotifier.value = servicesChoice.length;
    } catch (error, stackTrace) {
      NuvolsLogger().erro("-----ERRO-----", error, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: kToolbarHeight),
      decoration: BoxDecoration(
        gradient: CustomBackgroundColors.gradientAppBarPetshop,
      ),
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
                backgroundColor: CustomColors.blueFinalBackground,
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
                    margin: const EdgeInsets.only(bottom: kToolbarHeight + 38),
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    height: 122,
                    width: MediaQuery.of(context).size.width * .95,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 2.5,
                        )
                      ],
                      color: CustomColors.bluePetshopBackgroundCard,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${value.toString()} Serviços selecionados",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Text(
                          "Valor: R\$ ${servicesPrice.toStringAsFixed(2)}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Agendar atendimento."),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
