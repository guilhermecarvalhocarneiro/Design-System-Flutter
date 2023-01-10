/*
Classe de calendário utilizando o package Flutter Advanced Calendar
URL: https://pub.dev/packages/flutter_advanced_calendar
Observação -> O package tem um problema de não mostrar os labels em ptBR
*/
import 'package:design_pinterest/core/widgets/calendar/src/custom_advanced_calendar/controller.dart';
import 'package:design_pinterest/core/widgets/calendar/src/custom_advanced_calendar/widget.dart';
import 'package:flutter/material.dart';

class CustomAdvancedCalendar extends StatefulWidget {
  const CustomAdvancedCalendar({super.key});

  @override
  State<CustomAdvancedCalendar> createState() => _CustomAdvancedCalendarState();
}

class _CustomAdvancedCalendarState extends State<CustomAdvancedCalendar> {
  final _controller = AdvancedCalendarController.today();
  final List<DateTime> events = [
    DateTime.now(),
    DateTime(2022, 10, 10),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 158),
        child: AdvancedCalendar(
          controller: _controller,
          innerDot: true,
          events: events,
          startWeekDay: 1,
          todayStyle: const TextStyle(color: Colors.white),
          // keepLineSize: true,
          weekLineHeight: 48.0,
        ),
      ),
    );
  }
}
