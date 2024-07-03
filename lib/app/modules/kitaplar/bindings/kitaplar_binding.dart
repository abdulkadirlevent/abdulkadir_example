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

import '../controllers/kitaplar_controller.dart';

class KitaplarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KitaplarController>(
      () => KitaplarController(),
    );
  }
}
