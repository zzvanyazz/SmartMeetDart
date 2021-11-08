import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_meet_dart/menu/day_dialog.dart';
import 'package:smart_meet_dart/menu/total_time/day_number_widget.dart';
import 'package:smart_meet_dart/menu/total_time/present_user_widget.dart';

class DayCalendarWidget extends StatefulWidget {
  final BuildContext context;
  final DateTime day;
  final DateTime focusedDay;

  DayCalendarWidget(this.context, this.day, this.focusedDay, {Key? key})
      : super(key: key);

  @override
  _DayCalendarWidgetState createState() =>
      _DayCalendarWidgetState(context, day, focusedDay);
}

class _DayCalendarWidgetState extends State<DayCalendarWidget> {
  final BuildContext context;
  final DateTime day;
  final DateTime focusedDay;

  _DayCalendarWidgetState(this.context, this.day, this.focusedDay);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.zero,
        onPressed: () {
          showDialog(context: context, builder: (context) => DayDialog());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DayNumberWidget(context, day, focusedDay),
            PresentUsersWidget(context, day, focusedDay)
          ],
        ),
      ),
    );
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
