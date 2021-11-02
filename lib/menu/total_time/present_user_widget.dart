import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PresentUsersWidget extends StatefulWidget {
  final BuildContext context;
  final DateTime day;
  final DateTime focusedDay;

  const PresentUsersWidget(this.context, this.day, this.focusedDay, {Key? key})
      : super(key: key);

  @override
  _PresentUsersState createState() =>
      _PresentUsersState(context, day, focusedDay);
}

class _PresentUsersState extends State<PresentUsersWidget> {
  final BuildContext context;
  final DateTime day;
  final DateTime focusedDay;

  _PresentUsersState(this.context, this.day, this.focusedDay);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Center(child: Text("fdvdfvdfvdfvdfvdfvdfvfdd")),
    );
  }
}
