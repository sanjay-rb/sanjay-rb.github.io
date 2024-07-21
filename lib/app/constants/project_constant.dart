import 'package:sanjayrb/app/constants/timeline_type_constant.dart';
import 'package:sanjayrb/app/data/models/timeline_model.dart';

List<TimelineModel> project = [
  TimelineModel(
    title: "100 Days of Flutter",
    subTitle: "Version : (5) 1.2.7",
    date: DateTime(2021, 02, 17),
    type: TimelineTypeConstant.project,
    isLive: true,
    link:
        "https://play.google.com/store/apps/details?id=com.sanjoke.hundred_days_of_flutter",
    points: [
      'This Application has a complete schedule table for learning all basic widgets in 100 days.',
      'Schedule every unique widget has a day.',
      'Introduction to all the widgets and video references.',
      'Mark as done and filter feature.',
      'Code sample with the output preview.',
      'Full documentation as a website.',
    ],
  ),
  TimelineModel(
    title: "My Personal Portfolio",
    subTitle: "Version : 1 (1.0.0)",
    date: DateTime(2023, 03, 09),
    type: TimelineTypeConstant.project,
    isLive: true,
    link: "NA",
    points: [
      'An portfolio page for my self to know more about me',
    ],
  ),
  TimelineModel(
    title: "Loga Parameshwari Temple Application",
    subTitle: "Version : (18) 2.13.1",
    date: DateTime(2023, 03, 6),
    type: TimelineTypeConstant.project,
    isLive: true,
    link:
        "https://play.google.com/store/apps/details?id=com.sanjoke.loga_parameshwari",
    points: [
      'Minor revision : Visibility of liked people names',
      'Minor revision : User online status',
      'Minor revision : History page lazy loading',
      'Minor revision : User verification for new pooja addition',
      'Minor revision : Permission handler',
      'Minor revision : Contact cards',
      'Minor revision : Special dates (Amavasay, Pournami & Ailyam Pooja Dates)',
      'Minor revision : Android notification channel addition',
      'Bug fix: Removed unwanted permissions'
    ],
  ),
  TimelineModel(
    title: "Loga Parameshwari Temple Application",
    subTitle: "Version : (16) 2.5.8",
    date: DateTime(2022, 11, 7),
    type: TimelineTypeConstant.project,
    isLive: false,
    link:
        "https://play.google.com/store/apps/details?id=com.sanjoke.loga_parameshwari",
    points: [
      'Minor revision : In App Check in Cloud FireStore',
      'Minor revision : Deeplink for pooja page',
    ],
  ),
  TimelineModel(
    title: "Loga Parameshwari Temple Application",
    subTitle: "Version : (14) 2.5.4",
    date: DateTime(2022, 05, 13),
    type: TimelineTypeConstant.project,
    isLive: false,
    link:
        "https://play.google.com/store/apps/details?id=com.sanjoke.loga_parameshwari",
    points: [
      'Bug fix: 3d GIF link updated',
      'Bug fix: Notification enable',
      'Minor revision : Photo swipe features',
      'Minor revision : Sponsors name list',
      'Minor revision : Payment info page',
      'Minor revision : Update date from the UI by the post creator (Edit Page)',
      'Minor revision : App Tutorial'
    ],
  ),
  TimelineModel(
    title: "Loga Parameshwari Temple Application",
    subTitle: "Version : 10 (2.0.0)",
    date: DateTime(2021, 07, 15),
    type: TimelineTypeConstant.project,
    isLive: false,
    link:
        "https://play.google.com/store/apps/details?id=com.sanjoke.loga_parameshwari",
    points: [
      'Added authentication with mobile OTP.',
      'Now you can add an image while scheduling the pooja.',
      'In-app update checked.',
      'New splash screen for preloading information.',
      'New profile page for each user.'
    ],
  ),
  TimelineModel(
    title: "Loga Parameshwari Temple Application",
    subTitle: "Version : 1 (1.0.0)",
    date: DateTime(2021, 05, 27),
    type: TimelineTypeConstant.project,
    isLive: false,
    link:
        "https://play.google.com/store/apps/details?id=com.sanjoke.loga_parameshwari",
    points: [
      'Initial version of the app',
    ],
  ),
];
