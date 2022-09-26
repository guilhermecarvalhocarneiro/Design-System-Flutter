import 'package:design_pinterest/core/colors.dart';
import 'package:design_pinterest/core/nuvols_logger.dart';
import 'package:design_pinterest/core/widgets/cards.dart';
import 'package:design_pinterest/core/widgets/labels.dart';
import 'package:flutter/material.dart';

class NuvolsGridHomePage extends StatefulWidget {
  const NuvolsGridHomePage({super.key});

  @override
  State<NuvolsGridHomePage> createState() => _NuvolsGridHomePageState();
}

class _NuvolsGridHomePageState extends State<NuvolsGridHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 22),
        const TituloSecao(
          texto: "Escolha a opção",
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 280,
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.3,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
            children: [
              NuvolsCardGridHomePage(
                titleText: "Agendar",
                contentText: "Solicitar reserva de consultório",
                icon: Icons.calendar_month,
                backgroundColor: CustomColors.chatelleCardIndex,
                funcao: () {
                  NuvolsLogger().info("Clicando no card de pagamento");
                },
              ),
              NuvolsCardGridHomePage(
                titleText: "Consultar",
                contentText: "Mostrar meus agendamentos",
                icon: Icons.search,
                backgroundColor: CustomColors.mediumSeaGreenCardIndex,
                funcao: () {
                  NuvolsLogger().info("Clicando no Card 02");
                },
              ),
              NuvolsCardGridHomePage(
                titleText: "Pagar",
                contentText: "Pagar uso do consultório",
                icon: Icons.call_received,
                backgroundColor: CustomColors.vanillaIceCardIndex,
                funcao: () {
                  NuvolsLogger().info("Clicando no Card 03");
                },
              ),
              NuvolsCardGridHomePage(
                titleText: "Problema",
                contentText: "Relatar um problema",
                icon: Icons.error_outlined,
                backgroundColor: CustomColors.yellowCardIndex,
                funcao: () {
                  NuvolsLogger().info("Clicando no Card 04");
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
