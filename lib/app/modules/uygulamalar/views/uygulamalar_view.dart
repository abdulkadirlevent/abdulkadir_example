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

import 'package:abdulkadir_example/app/modules/uygulamalar/controllers/uygulamalar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UygulamalarView extends GetView<UygulamalarController> {
  const UygulamalarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          primary: true,
          title: SizedBox(
            height: 50.0,
            child: TextField(
              textAlign: TextAlign.left,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintText: 'Uygulamalar ve oyunlarda ara',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.grey[850],
                filled: true,
              ),
            ),
          ),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              iconSize: 28,
              icon: const Icon(Icons.notifications_none),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            controller: controller.tabController,
            tabAlignment: TabAlignment.start,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
            tabs: controller.myTabs,
          ),
        ),
        body: Center(
            child: TabBarView(
          controller: controller.tabController,
          children: controller.tabViews,
        )),
      ),
    );
  }
}
