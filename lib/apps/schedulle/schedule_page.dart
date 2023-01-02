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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ScheduleCardDateHour(),
          ScheduleCardServiceItens(),
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
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Banho"),
                Text("Tosa"),
              ],
            ),
          ),
        ],
      ),
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
      children: const [
        Text(
          "22",
          style: TextStyle(
            height: 0.5,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "08:25",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
