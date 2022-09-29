// Pacote para cutomizar os labels a serem utilizados no aplicativo

import 'package:flutter/material.dart';

import '../colors.dart';

class TitlePage extends StatelessWidget {
  final String texto;
  const TitlePage({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: 18,
            color: CustomColors.labelText,
          ),
    );
  }
}

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
            color: CustomColors.labelText,
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
  const TextoPequeno({
    super.key,
    required this.texto,
  });

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

class TitleGridHomePage extends StatelessWidget {
  const TitleGridHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: Padding(
      padding: EdgeInsets.only(top: 12.0, bottom: 8),
      child: TituloSecao(texto: "Escolha a opção"),
    ));
  }
}

class TitleHistoryOperationHomePage extends StatelessWidget {
  const TitleHistoryOperationHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: Padding(
      padding: EdgeInsets.only(top: 12.0, bottom: 8),
      child: TituloSecao(texto: "Suas últimas operações"),
    ));
  }
}

class TitlePromotionsHomePage extends StatelessWidget {
  const TitlePromotionsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: Padding(
      padding: EdgeInsets.only(top: 12.0, bottom: 8),
      child: TituloSecao(texto: "Promoções"),
    ));
  }
}

class TitlePromotionCard extends StatelessWidget {
  final String texto;
  const TitlePromotionCard({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: Theme.of(context)
          .textTheme
          .displaySmall
          ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24),
    );
  }
}

class SubTitlePromotionCard extends StatelessWidget {
  final String texto;
  const SubTitlePromotionCard({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
    );
  }
}

class TitlePetshopPage extends StatelessWidget {
  const TitlePetshopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 12.0, bottom: 8),
        child: TitlePage(texto: "Confirma os pet's parceiros"),
      ),
    );
  }
}

class TitlePetShopNameDetailPage extends StatelessWidget {
  final String petshopName;
  const TitlePetShopNameDetailPage({super.key, required this.petshopName});

  @override
  Widget build(BuildContext context) {
    return TitlePage(texto: petshopName);
  }
}

class TitlePetShopEmailDetailPage extends StatelessWidget {
  final String petShopEmail;
  const TitlePetShopEmailDetailPage({super.key, required this.petShopEmail});

  @override
  Widget build(BuildContext context) {
    return TextoPequeno(texto: petShopEmail);
  }
}

class PetshopNameCard extends StatelessWidget {
  final String texto;
  const PetshopNameCard({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}

class PetshopAddressCard extends StatelessWidget {
  final String texto;
  const PetshopAddressCard({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(color: Colors.white, fontSize: 14),
    );
  }
}

class PethShopAboutText extends StatelessWidget {
  final String texto;
  const PethShopAboutText({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return TextoPequeno(texto: texto);
  }
}

class PetShopListServicesDetailPage extends StatelessWidget {
  const PetShopListServicesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TituloSecao(texto: "Confira nossa lista de serviços");
  }
}

class PetshopEmailCard extends StatelessWidget {
  final String texto;
  const PetshopEmailCard({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(color: Colors.white, fontSize: 14),
    );
  }
}

class PetshopPhoneCard extends StatelessWidget {
  final String texto;
  const PetshopPhoneCard({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(color: Colors.white, fontSize: 14),
    );
  }
}

class LoadingText extends StatelessWidget {
  final Color cor;
  const LoadingText({
    super.key,
    this.cor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "carregando ... ",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
