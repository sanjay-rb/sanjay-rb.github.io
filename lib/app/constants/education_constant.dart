import 'package:sanjayrb/app/constants/timeline_type_constant.dart';
import 'package:sanjayrb/app/data/models/timeline_model.dart';

List<TimelineModel> education = [
  TimelineModel(
    title: "B.E Computer Science and Engineering",
    subTitle: "KGiSL Institute Of Technology @ Coimbatore",
    date: DateTime(2016, 07),
    endDate: DateTime(2020, 07),
    type: TimelineTypeConstant.education,
    link: "NA",
    points: [
      'Area of Interest: Data Structures & Algorithms',
      'CGPA - 7.20',
    ],
  ),
  TimelineModel(
    title: "Higher Secondary School Certificate",
    subTitle: "C.S.I. Boys Higher Secondary School @ Coimbatore",
    date: DateTime(2014, 05),
    endDate: DateTime(2016, 04),
    type: TimelineTypeConstant.education,
    link: "NA",
    points: [
      'Area of Interest: Computer Science',
      'Percent of: 79.33%',
    ],
  ),
  TimelineModel(
    title: "Secondary School Leaving Certificate",
    subTitle: "C.S.I. Boys Higher Secondary School @ Coimbatore",
    date: DateTime(2009, 06),
    endDate: DateTime(2014, 06),
    type: TimelineTypeConstant.education,
    link: "NA",
    points: [
      'Area of Interest: Maths',
      'Percent of: 85.2%',
    ],
  ),
];
