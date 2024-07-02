/*
 * Created by Abdulkadir LEVENT  3.07.2024 00:20
 * Copyright (c) 2024 All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * Last modified:  3.07.2024 00:20
 * Contact: Email : abdulkadirlevent@hotmail.com
 * Website : https://www.abdulkadirlevent.com
 * Package: abdulkadir_example / abdulkadir_example
 * Örnek Mobil Uygulama
 */

import 'package:flutter/material.dart';

class SizeOzel extends StatelessWidget {
  final List<Map<String, dynamic>> apps = [
    {
      'rank': 1,
      'name': 'Brawl Stars',
      'category': 'Aksiyon',
      'description': 'Taktiğe dayalı nişancı',
      'rating': 3.9,
      'size': '543 MB',
      'tag': 'Önemli Güncelleme',
      'image': 'assets/img.png',
    },
    {
      'rank': 2,
      'name': 'Squad Busters',
      'category': 'Aksiyon',
      'description': 'IO oyun · Basit',
      'rating': 3.8,
      'tag': 'Fırsat',
      'image': 'assets/img.png',
    },
    {
      'rank': 3,
      'name': 'PUBG MOBILE',
      'category': 'Aksiyon',
      'description': 'Taktiğe dayalı nişancı',
      'rating': 4.2,
      'tag': 'Etkinlik',
      'image': 'assets/img.png',
    },
    {
      'rank': 4,
      'name': 'Stumble Guys',
      'category': 'Aksiyon',
      'description': 'Platform · Basit',
      'rating': 4.2,
      'tag': 'Editörün Seçimi',
      'image': 'assets/img.png',
    },
    {
      'rank': 5,
      'name': 'Snake.io - Eğlence Yılan Oyunu',
      'category': 'Aksiyon',
      'description': 'IO oyun · Basit · Savaş',
      'rating': 4.3,
      'tag': 'Etkinlik',
      'image': 'assets/img.png',
    },
    {
      'rank': 6,
      'name': 'Free Fire: 7. Yıl Dönümü',
      'category': 'Aksiyon',
      'description': 'Taktiğe dayalı nişancı',
      'rating': 4.5,
      'tag': 'Etkinlik',
      'image': 'assets/img.png',
    },
  ];

  SizeOzel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          color: Colors.transparent,
                          child: ListView(
                            children: [
                              ListTile(
                                title: const Text('Ücretsiz en popüler', style: TextStyle(color: Colors.white)),
                                subtitle: const Text('Ücretsiz en popüler', style: TextStyle(color: Colors.white70)),
                                onTap: () {},
                                selected: true,
                                selectedColor: Colors.blue,
                                tileColor: Colors.blue,
                                selectedTileColor: Colors.blue,
                              ),
                              ListTile(
                                title: const Text('En çok kazananlar', style: TextStyle(color: Colors.white)),
                                onTap: () {},
                              ),
                              ListTile(
                                title: const Text('Ücretli en popüler', style: TextStyle(color: Colors.white)),
                                onTap: () {},
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    child: const Text('Ücretsiz en popüler', style: TextStyle(color: Colors.white)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: Container(
                            color: Colors.black,
                            child: ListView.builder(
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text('Aksiyon $index', style: const TextStyle(color: Colors.white)),
                                  onTap: () {},
                                  tileColor: index % 2 == 0 ? Colors.blue : null,
                                );
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    child: const Text('Aksiyon', style: TextStyle(color: Colors.white)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Filtreleme işlemi
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    child: const Text('Yeni', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: apps.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(apps[index]['image']),
                ),
                title: Text(apps[index]['name']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(apps[index]['category']),
                    Text(apps[index]['description']),
                    Text('${apps[index]['rating']} ★'),
                  ],
                ),
                trailing: Text(apps[index]['tag']),
              );
            },
          ),
        ),
      ],
    );
  }
}
