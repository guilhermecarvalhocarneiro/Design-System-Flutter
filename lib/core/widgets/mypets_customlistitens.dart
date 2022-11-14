import 'package:design_pinterest/core/widgets/cards.dart';
import 'package:flutter/material.dart';

class NuvolsMyPetsCustomlistitens extends StatefulWidget {
  const NuvolsMyPetsCustomlistitens({Key? key}) : super(key: key);

  @override
  State<NuvolsMyPetsCustomlistitens> createState() => _NuvolsMyPetsCustomlistitensState();
}

class _NuvolsMyPetsCustomlistitensState extends State<NuvolsMyPetsCustomlistitens> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const NuvolsMyPetsCard();
        }, childCount: 30,
      ),
    );
  }
}
