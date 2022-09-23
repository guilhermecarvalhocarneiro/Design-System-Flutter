// Pacote para cutomizar os labels a serem utilizados no aplicativo

import 'package:flutter/material.dart';

/// Componente do título a ser utilizado
/// como texto principal de cada tela
class Titulo extends StatefulWidget {
  final String texto;
  const Titulo({super.key, required this.texto});

  @override
  State<Titulo> createState() => _TituloState();
}

class _TituloState extends State<Titulo> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

/// Componente do título a ser utilizado
/// como texto principal de cada tela
class SubTitulo extends StatefulWidget {
  final String texto;
  const SubTitulo({super.key, required this.texto});

  @override
  State<SubTitulo> createState() => _SubTituloState();
}

class _SubTituloState extends State<SubTitulo> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
