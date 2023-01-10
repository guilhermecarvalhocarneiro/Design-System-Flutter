import 'package:flutter/material.dart';

class CustomDateAdvancedCalendarLabel extends StatelessWidget {
  final String date;
  final bool isSelected;
  final bool isToday;
  const CustomDateAdvancedCalendarLabel(
      {super.key, required this.date, required this.isSelected, required this.isToday});

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: TextStyle(
        color: isSelected || isToday ? Colors.white : Colors.black54,
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
      ),
    );
  }
}
