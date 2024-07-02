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

class UygulamalarController extends GetxController with GetSingleTickerProviderStateMixin {
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
      const Tab(text: 'Bize özel'),
      const Tab(text: 'Çocuklar'),
      const Tab(text: 'Ücretli'),
      const Tab(text: 'Kategoriler'),
    ]);

    tabViews.addAll([
      const Center(child: Text('Size özel')),
      const Center(child: Text('Bize özel')),
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
