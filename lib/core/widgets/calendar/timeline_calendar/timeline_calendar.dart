/*
Classs de calendário utilizando o package Calendar Timeline
URL: https://pub.dev/packages/calendar_timeline
*/
import 'package:design_pinterest/core/colors.dart';
import 'package:design_pinterest/core/nuvols_logger.dart';
import 'package:design_pinterest/core/widgets/calendar/src/custom_timeline_calendar/calendar_timeline.dart';
import 'package:flutter/material.dart';

class CustomCalendarTimeline extends StatefulWidget {
  final bool showHoursOptionsList;

  const CustomCalendarTimeline({super.key, this.showHoursOptionsList = true});

  @override
  State<CustomCalendarTimeline> createState() => _CustomCalendarTimelineState();
}

class _CustomCalendarTimelineState extends State<CustomCalendarTimeline> {
  DateTime _selectedDate = DateTime.now().add(const Duration(days: 2));
  final _animatedDuration = const Duration(milliseconds: 500);
  bool _dateSelected = false;
  final ScrollController _scrollControllerHoursList = ScrollController();
  String _selectedHour = "";
  final _borderDateColor = CustomColors.scheduleCalendarDaySelectedBackgroundColor;
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

  void _resetDate() {
    setState(() {
      _selectedDate = DateTime.now().add(const Duration(days: 2));
      _dateSelected = false;
      _selectedHour = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 158),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CalendarTimeline(
              initialDate: _selectedDate,
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
              onDateSelected: (date) {
                // Movendo o SingleChieldScrollView HourList para o começo
                _scrollControllerHoursList.animateTo(
                  0,
                  duration: _animatedDuration,
                  curve: Curves.easeInOut,
                );
                setState(() {
                  _selectedDate = date;
                  _dateSelected = true;
                  _selectedHour = "";
                });
              },
              leftMargin: 8,
              monthColor: CustomColors.scheduleCalendarDaySelectedBackgroundColor,
              dayColor: CustomColors.scheduleCalendarDaySelectedBackgroundColor,
              activeBackgroundDayColor: CustomColors.scheduleCalendarDaySelectedBackgroundColor,
              dayNameColor: Colors.white,
              activeDayColor: Colors.white,
              // selectableDayPredicate: (date) => date.day != 23,
              locale: 'pt_BR',
              showYears: false,
            ),
            const SizedBox(height: 8),
            _buildTextButtonClearChoiceDate()
          ],
        ),
      ),
    );
  }

  // Método responsável por criar o botão de limpar a data selecionada
  AnimatedSwitcher _buildTextButtonClearChoiceDate() {
    return AnimatedSwitcher(
      duration: _animatedDuration,
      child: _dateSelected == true
          ? Column(
              children: [
                buildHoursOptionsList(),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: _resetDate,
                      style: TextButton.styleFrom(
                        foregroundColor: CustomColors.scheduleCalendarDaySelectedBackgroundColor,
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      child: const Text("Limpar escolha.")),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }

  // Método responsável por criar a lista de horários
  Widget buildHoursOptionsList() {
    return SingleChildScrollView(
      controller: _scrollControllerHoursList,
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 12),
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

  Widget buildHourItenOptionsList(String hour) {
    return GestureDetector(
      onTap: () {
        NuvolsLogger().debug("Horário selecionado: $_selectedDate $hour");
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
}
