import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DayNumberWidget extends StatelessWidget {
  final BuildContext context;
  final DateTime day;
  final DateTime focusedDay;

  DayNumberWidget(this.context, this.day, this.focusedDay);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Container(
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text(day.day.toString()))),
      ),
    );
  }
}
