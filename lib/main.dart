import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sanjayrb/app/services/theme_service.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/routes/app_pages.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sanjay R B (Portfolio)',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeService.getLightTheme(context),
      darkTheme: ThemeService.getDarkTheme(context),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
