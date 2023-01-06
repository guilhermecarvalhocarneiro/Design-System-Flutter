import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:design_pinterest/core/colors.dart';
import 'package:flutter/material.dart';

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
              CustomCalendarScheduleService(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCalendarScheduleService extends StatefulWidget {
  const CustomCalendarScheduleService({super.key});

  @override
  State<CustomCalendarScheduleService> createState() => _CustomCalendarScheduleServiceState();
}

class _CustomCalendarScheduleServiceState extends State<CustomCalendarScheduleService> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(const Duration(days: 2));
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: _selectedDate,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
            onDateSelected: (date) => setState(() => _selectedDate = date),
            leftMargin: 12,
            monthColor: CustomColors.scheduleCalendarMonthNameColor,
            dayColor: CustomColors.scheduleCalendarDayUnselectedColor,
            dayNameColor: const Color(0xFF333A47),
            activeDayColor: Colors.white,
            activeBackgroundDayColor: CustomColors.scheduleCalendarBackground,
            selectableDayPredicate: (date) => date.day != 23,
            locale: 'pt_BR',
          ),
        ],
      ),
    );
  }
}
