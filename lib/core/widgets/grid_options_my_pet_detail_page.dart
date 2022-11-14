import 'package:design_pinterest/core/colors.dart';
import 'package:design_pinterest/core/nuvols_logger.dart';
import 'package:design_pinterest/core/widgets/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridOptionsMyPetDetailPage extends StatefulWidget {
  const GridOptionsMyPetDetailPage({super.key});

  @override
  State<GridOptionsMyPetDetailPage> createState() => _GridOptionsMyPetDetailPageState();
}

class _GridOptionsMyPetDetailPageState extends State<GridOptionsMyPetDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
      ),
      delegate: SliverChildListDelegate(
        [
          NuvolsCardGridHomePage(
            titleText: "Agendar Vacinação",
            contentText: "Solicitar reserva de consultório",
            icon: Icons.vaccines,
            backgroundColor: CustomColors.chatelleCardIndex,
            funcao: () {
              NuvolsLogger().info("Clicando no card de pagamento");
            },
          ),
          NuvolsCardGridHomePage(
            titleText: "Meus medicamentos",
            contentText: "Mostrar meus medicamentos",
            icon: Icons.health_and_safety_outlined,
            backgroundColor: CustomColors.mediumSeaGreenCardIndex,
            funcao: () {
              NuvolsLogger().info("Clicando no Card 02");
            },
          ),
          NuvolsCardGridHomePage(
            titleText: "Agendar banho",
            contentText: "Escolher dia para o banho",
            icon: Icons.shower,
            backgroundColor: CustomColors.vanillaIceCardIndex,
            funcao: () {
              NuvolsLogger().info("Clicando no Card 03");
            },
          ),
          NuvolsCardGridHomePage(
            titleText: "Anotações",
            contentText: "Mostrar minhas anotações",
            icon: CupertinoIcons.pencil_ellipsis_rectangle,
            backgroundColor: CustomColors.yellowCardIndex,
            funcao: () {
              NuvolsLogger().info("Clicando no Card 04");
            },
          ),
        ],
      ),
    );
  }
}
