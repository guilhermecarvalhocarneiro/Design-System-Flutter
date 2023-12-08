import 'package:flutter/material.dart';

import '../../core/widgets/calendar/advanced_calendar/advanced_calendar.dart';
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
          child: CustomScrollView(
            slivers: [
              const NuvolsPageHeader(
                titlePage: "Agendamento",
              ),
              const TitleScheduleRequestServicePage(),
              const CustomAdvancedCalendar(),
              SliverFillRemaining(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
