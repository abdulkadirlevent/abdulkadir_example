/*
 * Created by Abdulkadir LEVENT  5.07.2024 19:04
 * Copyright (c) 2024 All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * Last modified:  5.07.2024 19:04
 * Contact: Email : abdulkadirlevent@hotmail.com
 * Website : https://www.abdulkadirlevent.com
 * Package: abdulkadir_example / abdulkadir_example
 * Örnek Mobil Uygulama
 */

import 'package:abdulkadir_example/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  HomePage({super.key});

  void _showBottomSheet(BuildContext context, String title) {
    showCupertinoModalBottomSheet(
      context: context,
      builder: (context) => BottomSheetContent(title: title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bu karar hakkındaki güncellemeler',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.access_time),
                  const SizedBox(width: 10),
                  Obx(() => Text(controller.statusMessage.value)),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      _showBottomSheet(context, 'Güncelleme');
                    },
                  ),
                ],
              ),
              Obx(() => Text(controller.statusDate.value)),
              const SizedBox(height: 20),
              const Text(
                'Bunun olmasının nedeni nedir?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Görünüşe göre bir kişiye veya kişi grubuna kimliklerinden dolayı saldıran bir şey paylaştın ya da gönderdin.'),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img.png'),
                  ),
                  title: Text('Abdulkadir Levent'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('4 Tem 2024'),
                      Text('DÖNMEİBNE 👍'),
                      Text('Haluk Cangökçe üzerinde paylaşıldı'),
                    ],
                  ),
                ),
              ),
              const Text(
                'Bu, nefret söylemiyle ilgili Topluluk Standartlarımıza aykırı.',
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('Kuralı gör'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  _showBottomSheet(context, 'Kural');
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Bilmen gerekenler:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: const Icon(Icons.warning),
                title: const Text('Kurallarımızın tekrar ihlali daha fazla hesap kısıtlamasına neden...'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  _showBottomSheet(context, 'Kurallar');
                },
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Bu kararı nasıl verdik?'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  _showBottomSheet(context, 'Karar');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomSheetContent extends StatelessWidget {
  final String title;

  const BottomSheetContent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white12,
        height: 300,
        child: Column(
          children: [
            Container(
              width: 60,
              height: 5,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            ListTile(
              title: Text('$title Option 1'),
              onTap: () {
                Get.back();
                Get.to(DetailPage(detail: '$title Option 1'));
              },
            ),
            ListTile(
              title: Text('$title Option 2'),
              onTap: () {
                Get.back();
                Get.to(DetailPage(detail: '$title Option 2'));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String detail;

  const DetailPage({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detail),
      ),
      body: Center(
        child: Text('Details of $detail'),
      ),
    );
  }
}
