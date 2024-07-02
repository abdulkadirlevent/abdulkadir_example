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

import 'package:abdulkadir_example/app/modules/kitaplar/views/kitaplar_view.dart';
import 'package:abdulkadir_example/app/modules/oyunlar/views/oyunlar_view.dart';
import 'package:abdulkadir_example/app/modules/uygulamalar/views/uygulamalar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedIndex = 0.obs;

  List<Widget> get widgetOptions => [
        const OyunlarView(),
        const UygulamalarView(),
        const KitaplarView(),
      ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
