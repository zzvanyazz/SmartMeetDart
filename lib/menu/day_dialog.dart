import 'package:flutter/material.dart';

class DayDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(9)),
          side: BorderSide(color: Colors.white)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            children: [
              UserElement(),
              UserElement(),
              UserElement(),
              UserElement(),
              UserElement(),
              UserElement(),
              UserElement(),
              UserElement(),
            ],
          ),
        ],
      ),
    );
  }
}

class UserElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(9)),
            side: BorderSide(color: Colors.black54)),
        padding: EdgeInsets.all(0),
        onPressed: () => {},
        child: Wrap(
          direction: Axis.vertical,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Material(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        side: BorderSide(color: Colors.black54)),
                    child: Icon(
                      Icons.check,
                      color: Colors.black54,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    child: Text("Name SecondName"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
