import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanjayrb/app/data/providers/profile_provider.dart';
import 'package:sanjayrb/app/data/providers/timeline_provider.dart';
import 'package:sanjayrb/app/modules/home/views/profile_widget.dart';
import 'package:sanjayrb/app/modules/home/views/timeline_widget.dart';
import 'package:sanjayrb/app/services/responsive_service.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: controller.scrollController,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: ResponsiveService.height(context, 50),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SelectableText(
                    "Sanjay R B",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pacifico().copyWith(
                      fontSize: ResponsiveService.width(context, 50),
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ).animate(delay: NumDurationExtensions(1).seconds).scale(),
                  SizedBox(height: ResponsiveService.height(context, 10)),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: List.generate(
                      ProfileProvider.getProfiles().length,
                      (index) => ProfileWidget(
                        profile: ProfileProvider.getProfiles()[index],
                      ),
                    )
                        .animate(
                          interval: 200.ms,
                          delay: NumDurationExtensions(1.5).seconds,
                        )
                        .fadeIn(),
                  ),
                  SizedBox(height: ResponsiveService.height(context, 10)),
                  Divider(
                    indent: ResponsiveService.widthRatio(context, 0.4),
                    endIndent: ResponsiveService.widthRatio(context, 0.4),
                    color: Theme.of(context).colorScheme.tertiary,
                  ).animate(delay: NumDurationExtensions(3).seconds).fade(),
                  SizedBox(height: ResponsiveService.height(context, 10)),
                  ResponsiveService.isMobile(context)
                      ? Wrap(
                          alignment: WrapAlignment.center,
                          runSpacing: 10,
                          spacing: 10,
                          children: List.generate(
                            TimelineProvider.iconMap.keys.length,
                            (index) {
                              List<String> keys =
                                  TimelineProvider.iconMap.keys.toList();
                              return InkWell(
                                onTap: () {
                                  controller.updateTimelineWithKey(keys[index]);
                                },
                                child: Column(
                                  children: [
                                    Tooltip(
                                      message: keys[index],
                                      child: Container(
                                        width: ResponsiveService.width(
                                            context, 50),
                                        height: ResponsiveService.width(
                                            context, 50),
                                        decoration: BoxDecoration(
                                          color:
                                              Get.theme.colorScheme.secondary,
                                          borderRadius: BorderRadius.circular(
                                            ResponsiveService.width(
                                                context, 50),
                                          ),
                                        ),
                                        child: FittedBox(
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                              ResponsiveService.width(
                                                  context, 50 / 5),
                                            ),
                                            child: Icon(
                                              TimelineProvider
                                                  .iconMap[keys[index]],
                                              color:
                                                  Get.theme.colorScheme.primary,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        height: ResponsiveService.height(
                                            context, 8)),
                                    Text(
                                      keys[index],
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.fredoka().copyWith(
                                        fontSize: ResponsiveService.width(
                                            context, 15),
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          )
                              .animate(
                                  interval: 200.ms,
                                  delay: NumDurationExtensions(3).seconds)
                              .scale()
                              .fade(),
                        )
                      : Wrap(
                          alignment: WrapAlignment.center,
                          children: List.generate(
                            TimelineProvider.iconMap.keys.length,
                            (index) {
                              List<String> keys =
                                  TimelineProvider.iconMap.keys.toList();
                              return Tooltip(
                                message: keys[index],
                                child: MaterialButton(
                                  onPressed: () {
                                    controller
                                        .updateTimelineWithKey(keys[index]);
                                  },
                                  child: Container(
                                    width: ResponsiveService.width(context, 50),
                                    height:
                                        ResponsiveService.width(context, 50),
                                    decoration: BoxDecoration(
                                      color: Get.theme.colorScheme.secondary,
                                      borderRadius: BorderRadius.circular(
                                        ResponsiveService.width(context, 50),
                                      ),
                                    ),
                                    child: FittedBox(
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                          ResponsiveService.width(
                                              context, 50 / 5),
                                        ),
                                        child: Icon(
                                          TimelineProvider.iconMap[keys[index]],
                                          color: Get.theme.colorScheme.primary,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                              .animate(
                                  interval: 200.ms,
                                  delay: NumDurationExtensions(3).seconds)
                              .scale()
                              .fade(),
                        ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveService.height(context, 10),
          ),
          const TimelineWidget()
              .animate(delay: NumDurationExtensions(4).seconds)
              .fadeIn(),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: Get.theme.colorScheme.tertiary,
              child: Icon(
                Get.isDarkMode ? Icons.light_mode : Icons.dark_mode,
                color: Get.theme.colorScheme.primary,
              ),
              onPressed: () {
                controller.switchTheme();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: Get.theme.colorScheme.secondary,
              child: Icon(
                Icons.home,
                color: Get.theme.colorScheme.primary,
              ),
              onPressed: () {
                controller.scrollController.animateTo(
                  0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
