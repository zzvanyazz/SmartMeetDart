import 'dart:async';

import 'package:flutter_live_data/core.dart';
import 'package:smart_meet_dart/data/time_line.dart';

class TimeLineRepository {
  static final TimeLineRepository _instance = TimeLineRepository._internal();

  factory TimeLineRepository() {
    return _instance;
  }

  TimeLineRepository._internal();

  LiveData<List<TimeLine>> timeLinesData = LiveData(const []);

}
