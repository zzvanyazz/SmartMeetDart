import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DayNumberWidget extends StatelessWidget {
  final BuildContext context;
  final DateTime day;
  final DateTime focusedDay;

  DayNumberWidget(this.context, this.day, this.focusedDay);

  @override
  Widget build(BuildContext context) {
    final String text = "11";
    final TextStyle textStyle = TextStyle(
      fontSize: 24,
      color: Colors.white,
    );
    final Size txtSize = _textSize(text, textStyle);

    return Container(
      alignment: Alignment.topLeft,
      width: txtSize.width,
      height: txtSize.height,
      margin: EdgeInsets.all(1),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: AspectRatio(
        aspectRatio: 1,
        child: Center(
          child: Text(
            day.day.toString(),
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
