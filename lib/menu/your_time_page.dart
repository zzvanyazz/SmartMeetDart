
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class YourTimeDart extends StatefulWidget {
const YourTimeDart({Key? key}) : super(key: key);

@override
_YourTimeDartState createState() => _YourTimeDartState();
}

class _YourTimeDartState extends State<YourTimeDart> {
  Future<void> computeFuture = Future.value();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(),
    );
  }
}