import 'package:flutter/material.dart';

class CustomDateAdvancedCalendarLabel extends StatelessWidget {
  final String date;
  final bool isSelected;
  final bool isToday;
  final bool isHighlight;
  const CustomDateAdvancedCalendarLabel({
    super.key,
    required this.date,
    required this.isSelected,
    required this.isToday,
    required this.isHighlight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: TextStyle(
        color: isSelected || isToday
            ? Colors.white
            : isHighlight
                ? Colors.black54
                : Colors.black12,
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
      ),
    );
  }
}
