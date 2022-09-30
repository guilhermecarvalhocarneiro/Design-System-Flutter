import 'package:design_pinterest/core/mock_data/mock_data.dart';
import 'package:design_pinterest/core/widgets/petshop_card_service.dart';
import 'package:flutter/material.dart';

class PetShopListServices extends StatefulWidget {
  const PetShopListServices({super.key});

  @override
  State<PetShopListServices> createState() => _PetShopListServicesState();
}

class _PetShopListServicesState extends State<PetShopListServices> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Stack(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                color: Colors.white,
              ),
              PetshopCardService(
                serviceName: NuvolsCoreMockData.gerarPalavras(2),
                serviceDescription: NuvolsCoreMockData.gerarPalavras(12),
                servicePrice: double.tryParse(NuvolsCoreMockData.gerarNumeros(2).toString()) ?? 0.00,
                serviceTime: int.tryParse(NuvolsCoreMockData.gerarNumeros(2)) ?? 10,
              ),
            ],
          );
        },
        childCount: 50,
      ),
    );
  }
}
