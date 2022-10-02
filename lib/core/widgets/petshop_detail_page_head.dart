import 'package:design_pinterest/core/colors.dart';
import 'package:design_pinterest/core/mock_data/petshop_header_image.dart';
import 'package:flutter/material.dart';

class PetShopHead extends StatelessWidget {
  const PetShopHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: CustomBackgroundColors.gradientPetshopCard,
            image: DecorationImage(
              alignment: Alignment.bottomRight,
              image: AssetImage(PetshopHeaderImage.getRandomImage),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 25,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(38),
                topRight: Radius.circular(38),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
