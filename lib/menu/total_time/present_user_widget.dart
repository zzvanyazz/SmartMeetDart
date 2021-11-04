import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_meet_dart/data/repositories/time_line_repository.dart';

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
  final TimeLineRepository _timeLineRepository = TimeLineRepository();

  final BuildContext context;
  final DateTime day;
  final DateTime focusedDay;

  _PresentUsersState(this.context, this.day, this.focusedDay);

  @override
  Widget build(BuildContext context) {
    final String text = "11";
    final TextStyle textStyle = TextStyle(
      fontSize: 24,
      color: Colors.white,
    );
    final Size txtSize = _textSize(text, textStyle);

    return Container(
        alignment: Alignment.bottomRight,
        child: Container(
          alignment: Alignment.topLeft,
          width: txtSize.width,
          height: txtSize.height,
          margin: EdgeInsets.all(1),
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: AspectRatio(
            aspectRatio: 1,
            child: Center(
              child: Text(
                getCountUsers().toString(),
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ));
  }

  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

  int getCountUsers() {
    int length = 0;
    for (var timeLine in _timeLineRepository.timeLinesData.value) {
      if (day.isAfter(timeLine.startDate) && day.isBefore(timeLine.endDate))
        length++;
    }
    return length;
  }
}
