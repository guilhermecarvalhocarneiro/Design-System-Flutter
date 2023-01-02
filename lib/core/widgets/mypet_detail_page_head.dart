import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_pinterest/core/colors.dart';
import 'package:design_pinterest/core/mock_data/mock_data.dart';
import 'package:design_pinterest/core/widgets/labels.dart';
import 'package:flutter/material.dart';

class MyPetDetailPageHead extends StatelessWidget {
  final String petName;
  const MyPetDetailPageHead({Key? key, required this.petName}) : super(key: key);

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
        TitlePetName(petName: petName),
        const ScheduleButton(),
      ],
    );
  }
}

class TitlePetName extends StatelessWidget {
  final String petName;
  const TitlePetName({super.key, required this.petName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: kToolbarHeight - 10, left: 12),
      width: double.infinity,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
              size: 18,
            ),
          ),
          Text(
            petName.toString(),
            style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class ScheduleButton extends StatelessWidget {
  const ScheduleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .65,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColors.elevateButtonServiceScheduleOrange,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                    fontSize: 16
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
