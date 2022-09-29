import 'package:design_pinterest/core/colors.dart';
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
        image: const DecorationImage(
          alignment: Alignment.bottomRight,
          image: AssetImage(
            "assets/images/petshops/img-1.png"
          ),
        ),
      ),
    );
  }
}
