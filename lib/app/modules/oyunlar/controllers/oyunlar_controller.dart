/*
 * Created by Abdulkadir LEVENT  3.07.2024 03:33
 * Copyright (c) 2024 All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * Last modified:  3.07.2024 00:36
 * Contact: Email : abdulkadirlevent@hotmail.com
 * Website : https://www.abdulkadirlevent.com
 * Package: abdulkadir_example / abdulkadir_example
 * Örnek Mobil Uygulama
 */

import 'package:abdulkadir_example/app/modules/oyunlar/widgets/home.dart';
import 'package:abdulkadir_example/app/modules/oyunlar/widgets/size_ozel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OyunlarController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  late ScrollController scrollViewController;

  var myTabs = <Tab>[].obs;
  var tabViews = <Widget>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadTabs();
    scrollViewController = ScrollController();
  }

  /// loadTabs()
  Future<void> loadTabs() async {
    myTabs.addAll([
      const Tab(text: 'Size özel'),
      const Tab(text: 'Üst sıralar'),
      const Tab(text: 'Çocuklar'),
      const Tab(text: 'Ücretli'),
      const Tab(text: 'Kategoriler'),
    ]);

    tabViews.addAll([
      SizeOzel(),
      HomePage(),
      const Center(child: Text('Çocuklar')),
      const Center(child: Text('Ücretli')),
      const Center(child: Text('Kategoriler')),
    ]);

    tabController = TabController(length: myTabs.length, vsync: this);

    /// Scroll To Top Listener
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        _scrollToTop();
      }
    });
  }

  /// Scroll To Top
  _scrollToTop() {
    scrollViewController.animateTo(
      0.0,
      duration: const Duration(microseconds: 1),
      curve: const ElasticInCurve(0.01),
    );
  }
}
