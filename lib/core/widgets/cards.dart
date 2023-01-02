import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_pinterest/apps/my_pet/my_pet_detail_page.dart';
import 'package:design_pinterest/core/colors.dart';
import 'package:flutter/material.dart';

import '../../apps/petshops/petshop_detail_page_sliver.dart';
import '../mock_data/mock_data.dart';
import 'labels.dart';

/// Classe responsável por gerar os componentes Card
/// a serem utilizados no grid da página inicial
/// [Parametros]
///   titulo -> String contendo o título do card
///   texto -> String contendo o texto do card
///   icon -> IconData contendo  ícone do card
class NuvolsCardGridHomePage extends StatefulWidget {
  final String titleText;
  final String contentText;
  final IconData icon;
  final Color backgroundColor;
  final Color tituloColor;
  final Color iconColor;
  final Color contentTextColor;
  final void Function()? funcao;
  const NuvolsCardGridHomePage({
    super.key,
    required this.titleText,
    required this.contentText,
    required this.icon,
    required this.backgroundColor,
    this.tituloColor = CustomColors.blackOne,
    this.iconColor = CustomColors.black,
    this.contentTextColor = CustomColors.gray,
    this.funcao,
  });

  @override
  State<NuvolsCardGridHomePage> createState() => _NuvolsCardGridHomePageState();
}

class _NuvolsCardGridHomePageState extends State<NuvolsCardGridHomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.funcao ?? () {},
      child: Card(
        semanticContainer: true,
        elevation: 0.8,
        color: widget.backgroundColor,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  widget.icon,
                  color: widget.iconColor,
                  size: 26,
                ),
              ),
              const Spacer(),
              TituloCardGridHomePage(
                texto: widget.titleText,
                corTexto: widget.tituloColor,
              ),
              TextCardGridHomePage(
                texto: widget.contentText,
                corTexto: widget.tituloColor,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class NuvolsPetshopCard extends StatefulWidget {
  const NuvolsPetshopCard({super.key});

  @override
  State<NuvolsPetshopCard> createState() => _NuvolsPetshopCardState();
}

class _NuvolsPetshopCardState extends State<NuvolsPetshopCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PetShopDetailPageSliver.routeName);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const PetShopDetailPageSliver(),
        //   ),
        // );
      },
      child: Container(
        height: 255,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.5),
          gradient: CustomBackgroundColors.gradientPetshopCard,
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
      ),
    );
  }
}

/// Classe para renderizar o Card da página Meus Pets
class NuvolsMyPetsCard extends StatefulWidget {
  const NuvolsMyPetsCard({super.key});

  @override
  State<NuvolsMyPetsCard> createState() => _NuvolsMyPetsCardState();
}

class _NuvolsMyPetsCardState extends State<NuvolsMyPetsCard> {
  @override
  Widget build(BuildContext context) {
    var petName = NuvolsCoreMockData.gerarPalavras(2);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MyPetDetailPage.routeName, arguments: petName);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        child: Stack(
          children: [
            SizedBox(
              height: 255,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.5),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: NuvolsCoreMockData.getRandomImage,
                  placeholder: (context, url) => const Center(
                    child: LoadingText(),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.5),
                gradient: CustomBackgroundColors.gradientMyPetCardImageEffect,
              ),
              height: 255,
            ),
            Container(
              padding: const EdgeInsets.only(left: 8, bottom: 8),
              height: 255,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: MyPetNameCard(nome: petName),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: MyPetAgeCard(
                      idade: NuvolsCoreMockData.gerarNumeros(1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: MyPetLastVacinnation(
                      data: NuvolsCoreMockData.gerarDataAleatoria(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: MyPetLastShower(
                      data: NuvolsCoreMockData.gerarDataAleatoria(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
