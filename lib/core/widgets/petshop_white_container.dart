import 'package:design_pinterest/core/mock_data/mock_data.dart';
import 'package:design_pinterest/core/widgets/labels.dart';
import 'package:design_pinterest/core/widgets/petshop_listservices.dart';
import 'package:flutter/material.dart';

class PetShopWhiteCardOverHeader extends StatelessWidget {
  static const double _radiusCard = 38;
  const PetShopWhiteCardOverHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .18, bottom: 0),
        padding: const EdgeInsets.only(top: 22, left: 12, right: 12, bottom: 0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(_radiusCard),
            topRight: Radius.circular(_radiusCard),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitlePetShopNameDetailPage(petshopName: "PetShop Xpto"),
            const TitlePetShopEmailDetailPage(petShopEmail: "email@email.com.br"),
            const SizedBox(height: 18),
            PethShopAboutText(texto: NuvolsCoreMockData.gerarPalavras(15)),
            const SizedBox(height: 18),
            const PetShopListServicesDetailPage(),
          ],
        ),
      ),
    );
  }
}
