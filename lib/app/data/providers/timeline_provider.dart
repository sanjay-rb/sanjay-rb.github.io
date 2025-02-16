import 'package:flutter/material.dart';
import 'package:sanjayrb/app/constants/certification_constant.dart';
import 'package:sanjayrb/app/constants/education_constant.dart';
import 'package:sanjayrb/app/constants/project_constant.dart';
import 'package:sanjayrb/app/constants/timeline_type_constant.dart';
import 'package:sanjayrb/app/constants/work_constant.dart';

import '../models/timeline_model.dart';

class TimelineProvider {
  static Map<String, IconData> iconMap = {
    TimelineTypeConstant.all: Icons.timeline,
    TimelineTypeConstant.work: Icons.work_outline,
    TimelineTypeConstant.education: Icons.school_outlined,
    TimelineTypeConstant.project: Icons.science_outlined,
    TimelineTypeConstant.certificate: Icons.settings_system_daydream_outlined,
  };

  static List<TimelineModel> value = [
    ...work,
    ...education,
    ...project,
    ...certificate,
  ];

  static List<TimelineModel> getTimelineOfType(String type) {
    List<TimelineModel> timeline = [];

    if (type == TimelineTypeConstant.all) {
      timeline = value;
    } else {
      for (TimelineModel element in value) {
        if (element.type == type) {
          timeline.add(element);
        }
      }
    }

    timeline.sort(
      (a, b) => b.date!.microsecondsSinceEpoch.compareTo(
        a.date!.microsecondsSinceEpoch,
      ),
    );

    return timeline;
  }
}
