import 'package:design_pinterest/core/mock_data/mock_data.dart';
import 'package:design_pinterest/core/widgets/labels.dart';
import 'package:flutter/material.dart';

class MyPetDetailPageCardOverHeader extends StatefulWidget {
  final String petName;
  const MyPetDetailPageCardOverHeader({Key? key, required this.petName}) : super(key: key);

  @override
  State<MyPetDetailPageCardOverHeader> createState() => _MyPetDetailPageCardOverHeaderState();
}

class _MyPetDetailPageCardOverHeaderState extends State<MyPetDetailPageCardOverHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyPetDetailDefaultText(
            texto: "${NuvolsCoreMockData.gerarNumeros(1)} anos",
            fontSize: 24,
          ),
          const SizedBox(
            height: 4,
          ),
          MyPetDetailDefaultText(texto: "Última vacina aplicada: ${NuvolsCoreMockData.gerarDataAleatoria()}"),
          MyPetDetailDefaultText(texto: "Último banho: ${NuvolsCoreMockData.gerarDataAleatoria()}"),
          MyPetDetailDefaultText(texto: "Última consulta: ${NuvolsCoreMockData.gerarDataAleatoria()}"),
          MyPetDetailDefaultText(texto: "Peso: ${NuvolsCoreMockData.gerarNumeros(1)} quilos"),
          const SizedBox(height: 22),
          MyPetDetailDefaultText(
            texto: "Escolha uma opção a seguir",
            fontSize: 22,
          )
        ],
      ),
    );
  }
}
