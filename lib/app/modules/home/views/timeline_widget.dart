import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sanjayrb/app/data/providers/timeline_provider.dart';
import 'package:sanjayrb/app/modules/home/controllers/home_controller.dart';
import 'package:sanjayrb/app/services/responsive_service.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TimelineWidget extends GetWidget<HomeController> {
  const TimelineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        if (size.maxWidth <= ResponsiveService.kTestMobileSize.width) {
          return Obx(
            () => Column(
              children: List.generate(
                controller.timeline.length,
                (index) {
                  double iconSize = 40;
                  return Column(
                    children: [
                      ListTile(
                        onTap: () async {
                          await launchUrlString(
                              controller.timeline[index].link!);
                        },
                        leading: Container(
                          width: ResponsiveService.width(context, iconSize),
                          height: ResponsiveService.width(context, iconSize),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(
                              ResponsiveService.width(context, iconSize),
                            ),
                          ),
                          child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.all(
                                ResponsiveService.width(context, iconSize / 6),
                              ),
                              child: Icon(
                                TimelineProvider
                                    .iconMap[controller.timeline[index].type],
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        isThreeLine: true,
                        title: Text(
                          controller.timeline[index].title!,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.fredoka().copyWith(
                            fontSize: ResponsiveService.width(context, 20),
                            color: Theme.of(context).colorScheme.tertiary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.timeline[index].subTitle!,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.fredoka().copyWith(
                                fontSize: ResponsiveService.width(context, 15),
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                                decoration:
                                    controller.timeline[index].link != "NA"
                                        ? TextDecoration.underline
                                        : null,
                                decorationColor:
                                    Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            Text(
                              "${DateFormat.yMMM().format(controller.timeline[index].date!)} ${controller.timeline[index].endDate == null ? "" : (controller.timeline[index].endDate!.month == DateTime.now().month && controller.timeline[index].endDate!.year == DateTime.now().year) ? '- Live' : "- ${DateFormat.yMMM().format(controller.timeline[index].endDate!)}"}",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.fredoka().copyWith(
                                fontSize: ResponsiveService.width(context, 15),
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                                decorationColor:
                                    Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      ...List.generate(
                        controller.timeline[index].points!.length,
                        (pindex) => Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: ResponsiveService.width(context, 15),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.star,
                                  size: ResponsiveService.width(context, 15),
                                ),
                              ),
                              Expanded(
                                child: SelectableText(
                                  controller.timeline[index].points![pindex],
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.fredoka().copyWith(
                                    fontSize:
                                        ResponsiveService.width(context, 15),
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        indent: ResponsiveService.widthRatio(context, 0.4),
                        endIndent: ResponsiveService.widthRatio(context, 0.4),
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        }
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveService.widthRatio(context, 0.1),
          ),
          child: Obx(
            () => Column(
              children: List.generate(
                controller.timeline.length,
                (index) {
                  double iconSize = 40;
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                          ResponsiveService.width(context, 10),
                        ),
                        child: Container(
                          width: ResponsiveService.width(context, iconSize),
                          height: ResponsiveService.width(context, iconSize),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(
                              ResponsiveService.width(context, iconSize),
                            ),
                          ),
                          child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.all(
                                ResponsiveService.width(context, iconSize / 5),
                              ),
                              child: Icon(
                                TimelineProvider
                                    .iconMap[controller.timeline[index].type],
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(
                            ResponsiveService.width(context, 10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                controller.timeline[index].title!,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.fredoka().copyWith(
                                  fontSize:
                                      ResponsiveService.width(context, 25),
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: controller.timeline[index].link != "NA"
                                    ? () async {
                                        await launchUrlString(
                                          controller.timeline[index].link!,
                                        );
                                      }
                                    : null,
                                child: Text(
                                  controller.timeline[index].subTitle!,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.fredoka().copyWith(
                                    fontSize:
                                        ResponsiveService.width(context, 20),
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.bold,
                                    decoration:
                                        controller.timeline[index].link != "NA"
                                            ? TextDecoration.underline
                                            : null,
                                    decorationColor:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                              Text(
                                "${DateFormat.yMMM().format(controller.timeline[index].date!)} ${controller.timeline[index].endDate == null ? "" : (controller.timeline[index].endDate!.month == DateTime.now().month && controller.timeline[index].endDate!.year == DateTime.now().year) ? '- Live' : "- ${DateFormat.yMMM().format(controller.timeline[index].endDate!)}"}",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.fredoka().copyWith(
                                  fontSize:
                                      ResponsiveService.width(context, 20),
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.bold,
                                  decorationColor:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              ...List.generate(
                                controller.timeline[index].points!.length,
                                (pindex) => Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.star,
                                        size: ResponsiveService.width(
                                            context, 15),
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                    ),
                                    Expanded(
                                      child: SelectableText(
                                        controller
                                            .timeline[index].points![pindex],
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: ResponsiveService.width(
                                              context, 15),
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
