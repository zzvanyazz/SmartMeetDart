import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_meet_dart/menu/total_time/day_calendar_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class TotalTimePage extends StatefulWidget {
  const TotalTimePage({Key? key}) : super(key: key);

  @override
  _TotalTimePageState createState() => _TotalTimePageState();
}

class _TotalTimePageState extends State<TotalTimePage> {
  Future<void> computeFuture = Future.value();

  @override
  Widget build(BuildContext context) {
    return TableCalendarWidget(
        child: TableCalendar(
      firstDay: getDateWithOffset(offsetMount: -1),
      lastDay: getDateWithOffset(offsetYear: 10),
      focusedDay: DateTime.now(),
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) =>
            DayCalendarWidget(context, day, focusedDay),
        todayBuilder: (context, day, focusedDay) =>
            DayCalendarWidget(context, day, focusedDay),
      ),
    ));
  }

  DateTime getDateWithOffset(
      {int offsetYear = 0, int offsetMount = 0, int offsetDay = 0}) {
    var currentTime = DateTime.now();
    var date = DateTime(currentTime.year + offsetYear,
        currentTime.month + offsetMount, currentTime.day + offsetDay);
    return date;
  }
}

class TableCalendarWidget extends InheritedWidget {
  final Widget child;

  TableCalendarWidget({Key? key, required this.child})
      : super(key: key, child: child);

  static TableCalendarWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TableCalendarWidget>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw UnimplementedError();
  }
}

class InheritedWrapper extends StatefulWidget {
  final Widget child;

  InheritedWrapper({Key? key, required this.child}) : super(key: key);

  static InheritedWrapperState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedCounter>())!
        .data;
  }

  @override
  InheritedWrapperState createState() => InheritedWrapperState();
}

class InheritedWrapperState extends State<InheritedWrapper> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedCounter(
        child: this.widget.child, data: this, counter: counter);
  }
}

class InheritedCounter extends InheritedWidget {
  InheritedCounter(
      {Key? key,
      required this.child,
      required this.data,
      required this.counter})
      : super(key: key, child: child);

  final Widget child;
  final int counter;
  final InheritedWrapperState data;

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) {
    return counter != oldWidget.counter;
  }
}
