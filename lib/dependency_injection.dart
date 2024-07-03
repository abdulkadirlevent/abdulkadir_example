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

import 'package:get/get.dart';

import 'app/modules/googlePlay/controllers/google_play_controller.dart';
import 'app/modules/home/controllers/home_controller.dart';
import 'app/modules/kitaplar/controllers/kitaplar_controller.dart';
import 'app/modules/oyunlar/controllers/oyunlar_controller.dart';
import 'app/modules/uygulamalar/controllers/uygulamalar_controller.dart';

/// final HomeController c = Get.put(HomeController());
/// final HomeController c = Get.find();
class DependencyInjection {
  static void init() {
    /// SESSION BINDING
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<UygulamalarController>(() => UygulamalarController(), fenix: true);
    Get.lazyPut<KitaplarController>(() => KitaplarController(), fenix: true);
    Get.lazyPut<OyunlarController>(() => OyunlarController(), fenix: true);
    Get.lazyPut<GooglePlayController>(() => GooglePlayController(), fenix: true);
  }
}
