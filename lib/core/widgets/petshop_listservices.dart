import 'package:flutter/material.dart';

import '../mock_data/mock_data.dart';
import '../nuvols_logger.dart';
import 'petshop_card_service.dart';

class PetShopListServices extends StatefulWidget {
  final Function(String, String, double) addRemoveService;
  const PetShopListServices({super.key, required this.addRemoveService});

  @override
  State<PetShopListServices> createState() => _PetShopListServicesState();
}

class _PetShopListServicesState extends State<PetShopListServices> {
  List<String> servicesChoices = <String>[];
  final servicesChoiceNotifier = ValueNotifier(<String>[]);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final serviceName = NuvolsCoreMockData.gerarPalavras(2);
          final serviceID = NuvolsCoreMockData.gerarNumeros(50);
          final serviceDescription = NuvolsCoreMockData.gerarPalavras(10);
          final servicePrice = double.tryParse(NuvolsCoreMockData.gerarNumeros(2).toString()) ?? 0.00;
          final serviceTime = int.tryParse(NuvolsCoreMockData.gerarNumeros(2)) ?? 10;
          return Stack(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                color: Colors.white,
              ),
              GestureDetector(
                onTap: () {
                  _serviceAddRemove(serviceID);
                  widget.addRemoveService(
                    serviceID.toString(),
                    serviceName.toString(),
                    servicePrice,
                  );
                },
                child: ValueListenableBuilder<List<String>>(
                  valueListenable: servicesChoiceNotifier,
                  builder: (_, dynamic value, Widget? child) {
                    final serviceChoice = value.toList().contains(serviceID);
                    return PetshopCardService(
                      serviceID: serviceID,
                      serviceName: serviceName,
                      serviceDescription: serviceDescription,
                      servicePrice: servicePrice,
                      serviceTime: serviceTime,
                      selected: serviceChoice,
                    );
                  },
                ),
              ),
            ],
          );
        },
        childCount: 50,
      ),
    );
  }

  void _serviceAddRemove(String serviceID) {
    try {
      if (servicesChoices.contains(serviceID)) {
        servicesChoices.remove(servicesChoices.where((element) => element == serviceID).first);
      } else {
        servicesChoices.add(serviceID);
      }
      servicesChoiceNotifier.value = [...servicesChoices];
      NuvolsLogger().debug("${servicesChoiceNotifier.value.toList()}");
    } catch (error, stackTrace) {
      NuvolsLogger().erro("-----ERRO-----", error, stackTrace);
    }
  }
}
