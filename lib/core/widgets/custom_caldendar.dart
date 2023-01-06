import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:clean_calendar/clean_calendar.dart';
import 'package:design_pinterest/core/nuvols_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';

import '../colors.dart';

/*
Classs de calendário utilizando o package Calendar Timeline
URL: https://pub.dev/packages/calendar_timeline
*/
class CustomCalendarTimeline extends StatefulWidget {
  const CustomCalendarTimeline({super.key});

  @override
  State<CustomCalendarTimeline> createState() => _CustomCalendarTimelineState();
}

class _CustomCalendarTimelineState extends State<CustomCalendarTimeline> {
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

/*
Classs de calendário utilizando o package Awsome Calendar
URL: https://pub.dev/packages/awesome_calendar
*/
class CustomAwesomeCalendar extends StatefulWidget {
  const CustomAwesomeCalendar({super.key});

  @override
  State<CustomAwesomeCalendar> createState() => _CustomAwesomeCalendarState();
}

class _CustomAwesomeCalendarState extends State<CustomAwesomeCalendar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/*
Classe de calendário utilizando o package Flutter Advanced Calendar
URL: https://pub.dev/packages/flutter_advanced_calendar
Observação -> O package tem um problema de não mostrar os labels em ptBR
*/
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
    return AdvancedCalendar(
      controller: _controller,
      innerDot: true,
      events: events,
      startWeekDay: 1,
      // keepLineSize: true,
      weekLineHeight: 48.0,
    );
  }
}

/*
Classe de calendário utilizando o package CleanCalendar
URL: https://pub.dev/packages/clean_calendar
*/
class CustomCleanCalendar extends StatefulWidget {
  const CustomCleanCalendar({super.key});

  @override
  State<CustomCleanCalendar> createState() => _CustomCleanCalendarState();
}

class _CustomCleanCalendarState extends State<CustomCleanCalendar> {
  List<DateTime> selectedDates = <DateTime>[];
  final _borderDateColor = CustomColors.backgroundButtonOrange;
  final _borderRadius = 3.5;
  @override
  Widget build(BuildContext context) {
    return CleanCalendar(
      selectedDates: selectedDates,
      dateSelectionMode: DatePickerSelectionMode.singleOrMultiple,
      // Configurando o estilo da data selecionada
      selectedDatesProperties: DatesProperties(
        datesDecoration: DatesDecoration(
          datesBorderColor: Colors.amberAccent,
          datesBackgroundColor: _borderDateColor,
          datesBorderRadius: _borderRadius,
        ),
      ),
      // Configurando o estilo da data não selecionada
      generalDatesProperties: DatesProperties(
        datesDecoration: DatesDecoration(
          datesBorderColor: _borderDateColor,
          datesBackgroundColor: Colors.white,
          datesBorderRadius: _borderRadius,
        ),
      ),
      // Configurando o estilo da data atual
      currentDateProperties: DatesProperties(
        datesDecoration: DatesDecoration(
            datesBorderColor: CustomColors.scheduleCalendarBackground,
            datesBackgroundColor: CustomColors.scheduleCalendarBackground,
            datesBorderRadius: 100.0,
            datesTextStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )),
      ),
      // Configurando o estilo do título dos dias
      weekdaysProperties: WeekdaysProperties(
        generalWeekdaysDecoration: WeekdaysDecoration(
          weekdayTextColor: CustomColors.backgroundButtonOrange,
        ),
        sundayDecoration: WeekdaysDecoration(
          weekdayTextColor: Colors.black26,
        ),
      ),
      // Providing calendar the dat
      onSelectedDates: (List<DateTime> value) {
        selectedDates = value;
        // Called every time dates are selected or deselected.
        NuvolsLogger().debug('Selected dates: $selectedDates');
        setState(() {});
      },
      datePickerCalendarView: DatePickerCalendarView.weekView,
      // Setting custom weekday symbols
      weekdaysSymbol: const Weekdays(
        sunday: "D",
        monday: "S",
        tuesday: "T",
        wednesday: "Q",
        thursday: "Q",
        friday: "S",
        saturday: "S",
      ),
      // Setting custom month symbols
      monthsSymbol: const Months(
        january: "Jan",
        february: "Fev",
        march: "Mar",
        april: "Abr",
        may: "Mai",
        june: "Jun",
        july: "Jul",
        august: "Ago",
        september: "Set",
        october: "Out",
        november: "Nov",
        december: "Dez",
      ),
    );
  }
}
