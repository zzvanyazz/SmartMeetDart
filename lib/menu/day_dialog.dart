import 'package:flutter/material.dart';

class DayDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Dialog(
          child: Column(
            children: [
              Column(),
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
              )
            ],
          ),
        ),
      ],
    );
  }
}

class UserElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      RawMaterialButton(
        onPressed: () {},
        elevation: 2.0,
        fillColor: Colors.white,
        child: Icon(
          Icons.pause,
          size: 35.0,
        ),
        padding: EdgeInsets.all(15.0),
        shape: CircleBorder(),
      ),
      Text("Name SecondName")

    ]
    ,
    );
  }

}
