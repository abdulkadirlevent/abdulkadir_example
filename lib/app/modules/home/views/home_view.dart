/*
 * Created by Abdulkadir LEVENT  2.07.2024 23:42
 * Copyright (c) 2024 All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * Last modified:  2.07.2024 20:20
 * Contact: Email : abdulkadirlevent@hotmail.com
 * Website : https://www.abdulkadirlevent.com
 * Package: abdulkadir_example / abdulkadir_example
 * Örnek Mobil Uygulama
 */

import 'package:abdulkadir_example/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Center(
          child: controller.widgetOptions.elementAt(controller.selectedIndex()),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.games),
              label: 'Oyunlar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Uyg.lar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Kitaplar',
            ),
          ],
          currentIndex: controller.selectedIndex(),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: controller.onItemTapped,
        ),
      ),
    );
  }
}
