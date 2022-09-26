// Pacote para cutomizar os labels a serem utilizados no aplicativo

import 'package:flutter/material.dart';

import '../colors.dart';

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
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}

class TituloSecao extends StatefulWidget {
  final String texto;
  const TituloSecao({super.key, required this.texto});

  @override
  State<TituloSecao> createState() => _TituloSecaoState();
}

class _TituloSecaoState extends State<TituloSecao> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: CustomColors.grayTwo,
          ),
    );
  }
}

class TextoMedio extends StatefulWidget {
  final String texto;
  const TextoMedio({super.key, required this.texto});

  @override
  State<TextoMedio> createState() => _TextoMedio();
}

class _TextoMedio extends State<TextoMedio> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}

class TextoPequeno extends StatefulWidget {
  final String texto;
  const TextoPequeno({super.key, required this.texto});

  @override
  State<TextoPequeno> createState() => _TextoPequeno();
}

class _TextoPequeno extends State<TextoPequeno> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}

class TituloCardGridHomePage extends StatefulWidget {
  final String texto;
  final Color corTexto;
  const TituloCardGridHomePage({
    super.key,
    required this.texto,
    required this.corTexto,
  });

  @override
  State<TituloCardGridHomePage> createState() => _TituloCardGridHomePage();
}

class _TituloCardGridHomePage extends State<TituloCardGridHomePage> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: widget.corTexto,
            fontWeight: FontWeight.w600,
          ),
    );
  }
}

class TextCardGridHomePage extends StatefulWidget {
  final String texto;
  final Color corTexto;
  const TextCardGridHomePage({
    super.key,
    required this.texto,
    required this.corTexto,
  });

  @override
  State<TextCardGridHomePage> createState() => _TextCardGridHomePage();
}

class _TextCardGridHomePage extends State<TextCardGridHomePage> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      softWrap: true,
      maxLines: 2,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: widget.corTexto,
            fontSize: 12,
            height: 1.2,
          ),
    );
  }
}

class TextListViewHistoryOperation extends StatefulWidget {
  final String texto;
  final Color corTexto;
  const TextListViewHistoryOperation({
    super.key,
    required this.texto,
    required this.corTexto,
  });

  @override
  State<TextListViewHistoryOperation> createState() => _TextListViewHistoryOperation();
}

class _TextListViewHistoryOperation extends State<TextListViewHistoryOperation> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      textAlign: TextAlign.center,
      softWrap: true,
      maxLines: 2,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: widget.corTexto,
            fontSize: 12,
            height: 1.2,
          ),
    );
  }
}
