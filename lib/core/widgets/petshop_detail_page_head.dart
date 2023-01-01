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
            height: 35,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(38),
                topRight: Radius.circular(38),
              ),
            ),
          ),
        ),
        // const ScheduleButton(),
      ],
    );
  }
}

class ScheduleButton extends StatelessWidget {
  const ScheduleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      width: MediaQuery.of(context).size.width,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .65,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: CustomColors.elevateButtonServiceSchedule,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  "Agendar atendimento.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
