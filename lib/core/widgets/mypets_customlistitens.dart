import 'package:design_pinterest/core/widgets/cards.dart';
import 'package:flutter/material.dart';

class NuvolsMyPetsCustomlistItens extends StatefulWidget {
  const NuvolsMyPetsCustomlistItens({Key? key}) : super(key: key);

  @override
  State<NuvolsMyPetsCustomlistItens> createState() => _NuvolsMyPetsCustomlistItensState();
}

class _NuvolsMyPetsCustomlistItensState extends State<NuvolsMyPetsCustomlistItens> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const NuvolsMyPetsCard();
        },
        childCount: 30,
      ),
    );
  }
}
