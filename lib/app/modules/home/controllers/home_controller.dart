import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanjayrb/app/constants/timeline_type_constant.dart';
import 'package:sanjayrb/app/data/models/timeline_model.dart';
import 'package:sanjayrb/app/data/providers/timeline_provider.dart';

class HomeController extends GetxController {
  ScrollController scrollController = ScrollController();
  RxList<TimelineModel> timeline = [TimelineModel()].obs;
  RxString selectedTimelineType = TimelineTypeConstant.all.obs;

  @override
  void onInit() {
    timeline.value =
        TimelineProvider.getTimelineOfType(TimelineTypeConstant.all);
    super.onInit();
  }

  void switchTheme() {
    Get.isDarkMode
        ? Get.changeThemeMode(ThemeMode.light)
        : Get.changeThemeMode(ThemeMode.dark);
  }

  void updateTimelineWithKey(String key) {
    selectedTimelineType.value = key;
    timeline.value = TimelineProvider.getTimelineOfType(key);
  }
}
