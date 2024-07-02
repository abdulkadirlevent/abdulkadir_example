/*
 * Created by Abdulkadir LEVENT  2.07.2024 01:27
 * Copyright (c) 2024 All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * Last modified:  2.07.2024 01:21
 * Contact: Email : abdulkadirlevent@hotmail.com
 * Website : http://www.yesilkep.com
 * Package: yesil_kep_app / yesil_kep_app
 * Yeşil Kep Mobil Uygulama
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
