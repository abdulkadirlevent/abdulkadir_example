/*
 * Created by Abdulkadir LEVENT  3.07.2024 03:33
 * Copyright (c) 2024 All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * Last modified:  3.07.2024 00:24
 * Contact: Email : abdulkadirlevent@hotmail.com
 * Website : https://www.abdulkadirlevent.com
 * Package: abdulkadir_example / abdulkadir_example
 * Örnek Mobil Uygulama
 */

import 'package:abdulkadir_example/app/modules/kitaplar/views/kitaplar_view.dart';
import 'package:abdulkadir_example/app/modules/oyunlar/views/oyunlar_view.dart';
import 'package:abdulkadir_example/app/modules/uygulamalar/views/uygulamalar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedIndex = 0.obs;

  var statusMessage = 'Yakında bizden haber alacaksın'.obs;
  var statusDate = 'Değerlendirmede • 4 Tem 2024'.obs;

  void updateStatus(String message, String date) {
    statusMessage.value = message;
    statusDate.value = date;
  }

  List<Widget> get widgetOptions => [
        const OyunlarView(),
        const UygulamalarView(),
        const KitaplarView(),
      ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
