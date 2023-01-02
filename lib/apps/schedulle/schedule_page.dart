import 'package:design_pinterest/core/colors.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/page_header.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: kToolbarHeight * .70, bottom: 55),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: const CustomScrollView(
          slivers: [
            NuvolsPageHeader(
              titlePage: "Minha Agenda",
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverListSchedule(),
          ],
        ),
      ),
    );
  }
}

class SliverListSchedule extends StatelessWidget {
  const SliverListSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const ScheduleCardPage();
        },
        childCount: 30,
      ),
    );
  }
}

class ScheduleCardPage extends StatefulWidget {
  const ScheduleCardPage({super.key});

  @override
  State<ScheduleCardPage> createState() => _ScheduleCardPageState();
}

class _ScheduleCardPageState extends State<ScheduleCardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: CustomColors.mediumSeaGreenCardIndex,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: .8,
            blurRadius: 4,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Nome do Pet",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: CustomColors.textBluePetShopCardService,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              ScheduleCardDateHour(),
              ScheduleCardServiceItens(),
            ],
          ),
        ],
      ),
    );
  }
}

class ScheduleCardServiceItens extends StatelessWidget {
  const ScheduleCardServiceItens({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Itens",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: CustomColors.textBluePetShopCardService,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                ServiceIten(serviceName: "Banho"),
                ServiceIten(serviceName: "Tosa"),
                ServiceIten(serviceName: "Vacina"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceIten extends StatelessWidget {
  final String serviceName;
  const ServiceIten({
    Key? key,
    required this.serviceName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check,
          color: CustomColors.textBluePetShopCardService,
          size: 20,
        ),
        const SizedBox(width: 4),
        Text(
          serviceName,
          style: const TextStyle(
            height: 1,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: CustomColors.textBluePetShopCardService,
          ),
        ),
      ],
    );
  }
}

class ScheduleCardDateHour extends StatelessWidget {
  const ScheduleCardDateHour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: const [
        Text(
          "22",
          style: TextStyle(
            height: 1,
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: CustomColors.textBluePetShopCardService,
          ),
        ),
        Text(
          "08:25",
          textAlign: TextAlign.start,
          style: TextStyle(
            height: .5,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: CustomColors.textBluePetShopCardService,
          ),
        ),
      ],
    );
  }
}
