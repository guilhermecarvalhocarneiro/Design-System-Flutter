
import 'package:clean_calendar/clean_calendar.dart';
import 'package:design_pinterest/core/nuvols_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';

import '../colors.dart';
import 'custom_calendar_timeline/src/calendar_timeline.dart';

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
      child: CalendarTimeline(
        initialDate: _selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
        onDateSelected: (date) => setState(() => _selectedDate = date),
        leftMargin: 8,
        monthColor: CustomColors.scheduleCalendarDaySelectedBackgroundColor,
        dayColor: CustomColors.scheduleCalendarDaySelectedBackgroundColor,
        activeBackgroundDayColor: CustomColors.scheduleCalendarDaySelectedBackgroundColor,
        dayNameColor: Colors.white,
        activeDayColor: Colors.white,
        selectableDayPredicate: (date) => date.day != 23,
        locale: 'pt_BR',
        showYears: false,
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
      todayStyle: const TextStyle(color: Colors.white),
      // keepLineSize: true,
      weekLineHeight: 48.0,
    );
  }
}

/*
Classe de calendário utilizando o package CleanCalendar
URL: https://pub.dev/packages/clean_calendar
*/

// Definindo a constante contendo a abreviação dos dias da semana
const _weekDaysSymbols =
    Weekdays(sunday: "D", monday: "S", tuesday: "T", wednesday: "Q", thursday: "Q", friday: "S", saturday: "S");

// Definindo a constante contendo a abreviação dos meses do ano
const _monthsSymbols = Months(
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
    december: "Dez");

/// Classe de calendário utilizando o package CleanCalendar.
///
/// Parameters:
///   showHoursOptionsList: Define se o calendário deve exibir a lista de horários
class CustomCleanCalendar extends StatefulWidget {
  final bool showHoursOptionsList;

  /// Cria um calendário utilizando o package CleanCalendar.
  ///
  /// Parameters:
  ///
  ///  [showHoursOptionsList]: Define se o calendário deve exibir a lista de horários, valor default é true
  const CustomCleanCalendar({super.key, this.showHoursOptionsList = true});

  @override
  State<CustomCleanCalendar> createState() => _CustomCleanCalendarState();
}

class _CustomCleanCalendarState extends State<CustomCleanCalendar> {
  List<DateTime> _selectedDates = <DateTime>[];
  String _selectedHour = "";
  final _borderDateColor = CustomColors.scheduleCalendarDaySelectedBackgroundColor;
  final _borderRadius = 3.5;
  final _currentDate = DateTime.now();
  final _hours = <String>[
    "08:00",
    "09:00",
    "10:00",
    "11:00",
    "12:00",
    "13:00",
    "14:00",
    "15:00",
    "16:00",
    "17:00",
    "18:00",
    "19:00",
    "20:00",
    "21:00",
    "22:00",
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 250, maxHeight: 250),
        child: Column(
          children: [
            buildCustomCleanCalendar(),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: widget.showHoursOptionsList && _selectedDates.isNotEmpty
                  ? buildHoursOptionsList()
                  : const SizedBox.shrink(),
            )
          ],
        ),
      ),
    );
  }

  Widget buildHourItenOptionsList(String hour) {
    return GestureDetector(
      onTap: () {
        NuvolsLogger().debug("Horário selecionado: ${_selectedDates.first} $hour");
        setState(() {
          _selectedHour = hour;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: hour != _selectedHour ? Colors.white : _borderDateColor,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: CustomColors.backgroundButtonOrange.withOpacity(.25),
              blurRadius: 2,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          hour,
          style: TextStyle(
            color: _selectedHour != hour ? Colors.black54 : Colors.white,
          ),
        ),
      ),
    );
  }

  // Método responsável por criar a lista de horários
  Widget buildHoursOptionsList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 22),
        child: Row(children: [
          const SizedBox(width: 4),
          for (var i = 0; i < _hours.length; i++) ...[
            buildHourItenOptionsList(_hours[i]),
            if (i != _hours.length - 1) const SizedBox(width: 12),
          ],
        ]),
      ),
    );
  }

  // Método responsável por criar o calendário customizado
  CleanCalendar buildCustomCleanCalendar() {
    return CleanCalendar(
      startWeekday: WeekDay.monday,
      // Configurando a data inicial do calendário
      startDateOfCalendar: _currentDate,
      // Atribuindo o valor para a data selecionada
      selectedDates: _selectedDates,
      // Configurando a forma de exibição do calendário
      datePickerCalendarView: DatePickerCalendarView.weekView,
      // Setting custom weekday symbols
      weekdaysSymbol: _weekDaysSymbols,
      // Setting custom month symbols
      monthsSymbol: _monthsSymbols,
      // Configurando o modo de seleção de datas
      dateSelectionMode: DatePickerSelectionMode.singleOrMultiple,
      leadingTrailingDatesProperties: DatesProperties(
        datesDecoration: DatesDecoration(
          datesBorderColor: _borderDateColor,
          datesBackgroundColor: Colors.white,
          datesBorderRadius: _borderRadius,
        ),
      ),
      // Configurando o estilo da data selecionada
      selectedDatesProperties: DatesProperties(
        datesDecoration: DatesDecoration(
          datesBorderColor: _borderDateColor,
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
          weekdayTextColor: CustomColors.scheduleCalendarDaySelectedBackgroundColor,
        ),
        sundayDecoration: WeekdaysDecoration(
          weekdayTextColor: Colors.black26,
        ),
      ),
      // Providing calendar the dat
      onSelectedDates: (List<DateTime> value) {
        // Called every time dates are selected or deselected.
        NuvolsLogger().debug('Selected dates: $_selectedDates');
        if (_currentDate.compareTo(value.first) > 0) {
          NuvolsLogger().debug('Data selecionada é menor que a data atual');
          return;
        }
        _selectedDates = value;
        _selectedHour = "";
        setState(() {});
      },
      onCalendarViewDate: (DateTime value) {
        // Called every time calendar view is changed.
        NuvolsLogger().debug('Calendar view date changed: $value');
        _selectedDates.clear();
        _selectedHour = "";
        setState(() {});
      },
    );
  }
}
