import 'package:flutter/material.dart';

import '../mock_data/mock_data.dart';
import 'petshop_card_service.dart';

class PetShopListServices extends StatefulWidget {
  final Function(String) addRemoveService;
  const PetShopListServices({super.key, required this.addRemoveService});

  @override
  State<PetShopListServices> createState() => _PetShopListServicesState();
}

class _PetShopListServicesState extends State<PetShopListServices> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final serviceName = NuvolsCoreMockData.gerarPalavras(2);
          final serviceID = NuvolsCoreMockData.gerarNumeros(50);
          return Stack(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                color: Colors.white,
              ),
              GestureDetector(
                onTap: () {
                  widget.addRemoveService(serviceID.toString());
                },
                child: PetshopCardService(
                  serviceName: serviceName,
                  serviceDescription: NuvolsCoreMockData.gerarPalavras(12),
                  servicePrice: double.tryParse(NuvolsCoreMockData.gerarNumeros(2).toString()) ?? 0.00,
                  serviceTime: int.tryParse(NuvolsCoreMockData.gerarNumeros(2)) ?? 10,
                ),
              ),
            ],
          );
        },
        childCount: 50,
      ),
    );
  }
}
