import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_pinterest/core/mock_data/promotions.dart';
import 'package:design_pinterest/core/widgets/labels.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class NuvolsPromotionCardHomePage extends StatefulWidget {
  const NuvolsPromotionCardHomePage({super.key});

  @override
  State<NuvolsPromotionCardHomePage> createState() => _NuvolsPromotionCardHomePageState();
}

class _NuvolsPromotionCardHomePageState extends State<NuvolsPromotionCardHomePage> {
  @override
  Widget build(BuildContext context) {
    final mockData = Promotions().getData;
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final item = mockData[index];
        return Container(
          padding: const EdgeInsets.only(top: 2, left: 2, right: 2),
          margin: const EdgeInsets.only(bottom: 18),
          width: double.infinity,
          decoration: BoxDecoration(
            color: CustomColors.greenCardIndex,
            borderRadius: BorderRadius.circular(6.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 125,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6.5),
                      topRight: Radius.circular(
                        6.5,
                      )),
                  child: CachedNetworkImage(
                    imageUrl: item['image'],
                    placeholder: (context, url) => const Center(child: LoadingText()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TitlePromotionCard(texto: item['titulo']),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 4),
                child: SubTitlePromotionCard(texto: item['valor'] ?? ""),
              ),
            ],
          ),
        );
      }, childCount: 2),
    );
  }
}
