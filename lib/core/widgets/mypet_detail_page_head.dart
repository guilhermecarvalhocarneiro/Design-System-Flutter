import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_pinterest/core/colors.dart';
import 'package:design_pinterest/core/mock_data/mock_data.dart';
import 'package:design_pinterest/core/widgets/labels.dart';
import 'package:flutter/material.dart';

class MyPetDetailPageHead extends StatelessWidget {
  const MyPetDetailPageHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 255,
          width: double.infinity,
          child: ClipRRect(
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: NuvolsCoreMockData.getRandomImage,
              placeholder: (context, url) => const Center(
                child: LoadingText(),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: CustomBackgroundColors.gradientMyPetDetailPageBody,
          ),
          height: 255,
        ),
      ],
    );
  }
}
