import 'package:design_pinterest/core/widgets/cards.dart';
import 'package:flutter/material.dart';

class NuvolsCustomListItens extends StatefulWidget {
  const NuvolsCustomListItens({super.key});

  @override
  State<NuvolsCustomListItens> createState() => _NuvolsCustomListItensState();
}

class _NuvolsCustomListItensState extends State<NuvolsCustomListItens> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const NuvolsPetshopCard();
        },
        childCount: 50,
      ),
    );
  }
}
