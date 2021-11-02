import 'dart:ui';

import 'package:flutter/material.dart';

import 'menu/total_time_page.dart';
import 'menu/your_time_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: const TabBar(
            labelColor: Color.fromARGB(180, 0, 0, 0),
            tabs: [
              Tab(
                icon: Icon(Icons.timelapse_outlined),
                text: 'Your time',
              ),
              Tab(
                icon: Icon(Icons.timeline),
                text: 'Total time',
              ),
            ],
          ),
          body: TabBarView(
            children: [
              YourTimeDart(),
              TotalTimeDart(),
            ],
          ),
        ),
      ),
    );
  }
}
