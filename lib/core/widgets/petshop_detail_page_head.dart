import 'package:design_pinterest/core/colors.dart';
import 'package:design_pinterest/core/mock_data/petshop_header_image.dart';
import 'package:flutter/material.dart';

class PetShopHead extends StatelessWidget {
  const PetShopHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .45,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: CustomBackgroundColors.gradientPetshopCard,
        image: DecorationImage(
          alignment: Alignment.bottomRight,
          image: AssetImage(PetshopHeaderImage.getRandomImage
          ),
        ),
      ),
    );
  }
}
