import 'package:flutter/material.dart';

import '../../core/widgets/custom_caldendar.dart';
import '../../core/widgets/labels.dart';
import '../../core/widgets/page_header.dart';

class ScheduleRequestServicePage extends StatelessWidget {
  static const String routeName = "/scheduleRequestServicePageRoute";
  const ScheduleRequestServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: kToolbarHeight * .70, bottom: 55),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: const CustomScrollView(
            slivers: [
              NuvolsPageHeader(
                titlePage: "Agendamento",
              ),
              TitleScheduleRequestServicePage(),
              // CustomCalendarTimeline(),
              SliverToBoxAdapter(
                child: CustomCleanCalendar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
