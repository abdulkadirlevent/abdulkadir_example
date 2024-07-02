/*
 * Created by Abdulkadir LEVENT  2.07.2024 23:42
 * Copyright (c) 2024 All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * Last modified:  2.07.2024 23:40
 * Contact: Email : abdulkadirlevent@hotmail.com
 * Website : https://www.abdulkadirlevent.com
 * Package: abdulkadir_example / abdulkadir_example
 * Örnek Mobil Uygulama
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'dependency_injection.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// CONTROLLER YÜKLENIYOR
  DependencyInjection.init();

  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.dark(),
      navigatorKey: navigatorKey,
    ),
  );
}
