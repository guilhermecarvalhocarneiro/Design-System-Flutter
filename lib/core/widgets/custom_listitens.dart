import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_pinterest/core/colors.dart';
import 'package:design_pinterest/core/mock_data/mock_data.dart';
import 'package:flutter/material.dart';

import 'labels.dart';

class NuvolsCustomListItens extends StatefulWidget {
  const NuvolsCustomListItens({super.key});

  @override
  State<NuvolsCustomListItens> createState() => _NuvolsCustomListItensState();
}

class _NuvolsCustomListItensState extends State<NuvolsCustomListItens> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          height: 255,
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.5),
            color: CustomColors.bluePetshopBackgroundCard,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(1),
                  height: 125,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.5),
                      topRight: Radius.circular(8.5),
                    ),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: NuvolsCoreMockData.getRandomImage,
                      placeholder: (context, url) => const Center(
                        child: LoadingText(),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: PetshopNameCard(
                  texto: NuvolsCoreMockData.gerarPalavras(2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: PetshopAddressCard(
                  texto: NuvolsCoreMockData.gerarPalavras(5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: PetshopEmailCard(
                  texto: NuvolsCoreMockData.gerarEmail(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: PetshopPhoneCard(
                  texto: NuvolsCoreMockData.gerarTelefone(),
                ),
              ),
            ],
          ),
        );
      }, childCount: 50),
    );
  }
}
