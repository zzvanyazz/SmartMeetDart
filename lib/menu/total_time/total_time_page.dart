import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_meet_dart/menu/total_time/day_calendar_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class TotalTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      shouldFillViewport: true,
      firstDay: getDateWithOffset(offsetMount: -1),
      lastDay: getDateWithOffset(offsetYear: 1),
      focusedDay: DateTime.now(),
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) =>
            DayCalendarWidget(context, day, focusedDay),
        todayBuilder: (context, day, focusedDay) =>
            DayCalendarWidget(context, day, focusedDay),
      ),
    );
  }

  DateTime getDateWithOffset(
      {int offsetYear = 0, int offsetMount = 0, int offsetDay = 0}) {
    var currentTime = DateTime.now();
    var date = DateTime(currentTime.year + offsetYear,
        currentTime.month + offsetMount, currentTime.day + offsetDay);
    return date;
  }
}
