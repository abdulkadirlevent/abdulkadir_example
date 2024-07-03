/*
 * Created by Abdulkadir LEVENT  3.07.2024 03:33
 * Copyright (c) 2024 All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * Last modified:  2.07.2024 23:43
 * Contact: Email : abdulkadirlevent@hotmail.com
 * Website : https://www.abdulkadirlevent.com
 * Package: abdulkadir_example / abdulkadir_example
 * Örnek Mobil Uygulama
 */

import 'package:get/get.dart';

import '../modules/googlePlay/bindings/google_play_binding.dart';
import '../modules/googlePlay/views/google_play_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kitaplar/bindings/kitaplar_binding.dart';
import '../modules/kitaplar/views/kitaplar_view.dart';
import '../modules/oyunlar/bindings/oyunlar_binding.dart';
import '../modules/oyunlar/views/oyunlar_view.dart';
import '../modules/uygulamalar/bindings/uygulamalar_binding.dart';
import '../modules/uygulamalar/views/uygulamalar_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GOOGLE_PLAY,
      page: () => const GooglePlayView(),
      binding: GooglePlayBinding(),
    ),
    GetPage(
      name: _Paths.OYUNLAR,
      page: () => const OyunlarView(),
      binding: OyunlarBinding(),
    ),
    GetPage(
      name: _Paths.KITAPLAR,
      page: () => const KitaplarView(),
      binding: KitaplarBinding(),
    ),
    GetPage(
      name: _Paths.UYGULAMALAR,
      page: () => const UygulamalarView(),
      binding: UygulamalarBinding(),
    ),
  ];
}
