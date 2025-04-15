// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

class WeekCalendar extends StatefulWidget {
  const WeekCalendar({super.key});

  @override
  _WeekCalendarState createState() => _WeekCalendarState();
}

class _WeekCalendarState extends State<WeekCalendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      calendarFormat: CalendarFormat.week,
      availableCalendarFormats: const {CalendarFormat.week: 'Week'},
      headerVisible: false,
      daysOfWeekVisible: false,
      calendarStyle: const CalendarStyle(outsideDaysVisible: false),
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, _) {
          return _buildDayCell(day, isSelected: false);
        },
        selectedBuilder: (context, day, _) {
          return _buildDayCell(day, isSelected: true);
        },
        todayBuilder: (context, day, _) {
          return _buildDayCell(day, isSelected: false);
        },
      ),
    );
  }

  Widget _buildDayCell(DateTime day, {required bool isSelected}) {
    final dateColor = isSelected ? AppColors.teal : Colors.black;
    final weekColor = isSelected ? AppColors.teal : Colors.grey;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _weekdayLabel(day.weekday),
          style: TextStyle(
            color: weekColor,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),

        Text(
          '${day.day}',
          style: TextStyle(
            color: dateColor,
            fontSize: 16,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Badge(
          backgroundColor: isSelected ? AppColors.teal : Colors.transparent,
        ),
      ],
    );
  }

  String _weekdayLabel(int weekday) {
    const weekdays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
    return weekdays[weekday - 1];
  }
}
