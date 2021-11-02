import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class TotalTimeDart extends StatefulWidget {
  const TotalTimeDart({Key? key}) : super(key: key);

  @override
  _TotalTimeDartState createState() => _TotalTimeDartState();
}

class _TotalTimeDartState extends State<TotalTimeDart> {
  Future<void> computeFuture = Future.value();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: getDateWithOffset(offsetMount: -1),
      lastDay: getDateWithOffset(offsetYear: 10),
      focusedDay: DateTime.now(),
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) {
          return Container(
            color: Colors.black12,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: MaterialButton(
                      shape: CircleBorder(),
                      onPressed: () {},
                      child: Text(day.day.toString())),
                ),
                Expanded(
                  flex: 1,
                  child: Center(child: Text("fdvdfvdfvdfvdfvdfvdfvfdd")),
                )
              ],
            ),
          );
        },
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

class
