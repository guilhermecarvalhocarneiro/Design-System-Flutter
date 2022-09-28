import 'package:design_pinterest/core/colors.dart';
import 'package:flutter/material.dart';

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
