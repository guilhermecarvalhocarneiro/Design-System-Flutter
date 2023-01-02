import 'package:flutter/material.dart';

import 'labels.dart';

class NuvolsPageHeader extends StatefulWidget {
  final double padding;
  final String titlePage;
  const NuvolsPageHeader({super.key, this.padding = 0.0, this.titlePage = "Amigo Tutor"});

  @override
  State<NuvolsPageHeader> createState() => _NuvolsPageHeaderState();
}

class _NuvolsPageHeaderState extends State<NuvolsPageHeader> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: widget.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Titulo(texto: widget.titlePage),
                const IconButton(
                    constraints: BoxConstraints(
                      maxHeight: 24,
                    ),
                    onPressed: null,
                    icon: Icon(
                      Icons.ring_volume,
                      size: 18,
                    ))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SubTitulo(texto: "Seja bem vindo,"),
                TextoMedio(texto: "Usuário Xpto"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
