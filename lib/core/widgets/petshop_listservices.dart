import 'package:flutter/material.dart';

class PetShopListServices extends StatefulWidget {
  const PetShopListServices({super.key});

  @override
  State<PetShopListServices> createState() => _PetShopListServicesState();
}

class _PetShopListServicesState extends State<PetShopListServices> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(0),
            width: double.infinity,
            height: 85,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Text("Item $index"),
          );
        },
        childCount: 50,
      ),
    );
  }
}
