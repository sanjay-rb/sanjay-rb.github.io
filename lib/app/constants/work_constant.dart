import 'package:sanjayrb/app/constants/timeline_type_constant.dart';
import 'package:sanjayrb/app/data/models/timeline_model.dart';

List<TimelineModel> work = [
  TimelineModel(
    title: "Flutter Developer - Freelance",
    subTitle: "Rooster Technology @ Coimbatore",
    date: DateTime(2020, 05, 5),
    type: TimelineTypeConstant.work,
    isLive: false,
    link: "NA",
    points: [
      'Worked on airway bill tracking app',
      'User management webapp for airline workers',
    ],
  ),
  TimelineModel(
    title: "Assistant System Engineer",
    subTitle: "TCS @ Bangalore",
    date: DateTime(2020, 10, 8),
    type: TimelineTypeConstant.work,
    isLive: false,
    link: "NA",
    points: [
      'Worked on end to end DevOps application',
      'Worded on BigData tools (Hive, Postgres, TeraData, BDM, PowerCenter, etc) DevOps cycle',
    ],
  ),
  TimelineModel(
    title: "System Engineer",
    subTitle: "TCS @ Bangalore",
    date: DateTime(2021, 08, 15),
    type: TimelineTypeConstant.work,
    isLive: true,
    link: "NA",
    points: [
      'Programing : Shell Scripting, Python',
      'Database : Hive, AVSC, PostgreSQL, RedShift, TeraData',
      'ETL Tool : Informatica BDM, Informatica PowerCenter'
    ],
  ),
];
