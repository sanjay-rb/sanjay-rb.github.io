import 'package:sanjayrb/app/constants/timeline_type_constant.dart';
import 'package:sanjayrb/app/data/models/timeline_model.dart';

List<TimelineModel> education = [
  TimelineModel(
    title: "B.E Computer Science and Engineering",
    subTitle: "KGiSL Institute Of Technology @ Coimbatore",
    date: DateTime(2016, 07),
    type: TimelineTypeConstant.education,
    isLive: false,
    link: "NA",
    points: [
      'July 2016 - July 2020',
      'CGPA - 7.20',
    ],
  ),
  TimelineModel(
    title: "Higher Secondary School Certificate",
    subTitle: "C.S.I. Boys Higher Secondary School @ Coimbatore",
    date: DateTime(2014, 05),
    type: TimelineTypeConstant.education,
    isLive: false,
    link: "NA",
    points: [
      'May 2014 - April 2016',
      'Percent of: 79.33%',
    ],
  ),
  TimelineModel(
    title: "Secondary School Leaving Certificate",
    subTitle: "C.S.I. Boys Higher Secondary School @ Coimbatore",
    date: DateTime(2009, 06),
    type: TimelineTypeConstant.education,
    isLive: false,
    link: "NA",
    points: [
      'June 2009 - June 2014',
      'Percent of: 85.2%',
    ],
  ),
];
