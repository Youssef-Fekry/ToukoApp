// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:toku_app/components/items.dart';
import 'package:toku_app/models/item_model.dart';

class Phases extends StatelessWidget {
  const Phases({Key? key}) : super(key: key);
  final List<ItemModel> member = const [
    ItemModel(
        sound: 'sounds/colors/black.wav',
        engName: 'Black',
        img: 'assets/images/colors/color_black.png',
        JpName: 'ichi'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        engName: 'Brown',
        img: 'assets/images/colors/color_brown.png',
        JpName: 'ni'),
    ItemModel(
        sound: 'sounds/colors/dusty_yellow.wav',
        engName: 'Dusty Yellow',
        img: 'assets/images/colors/color_dusty_yellow.png',
        JpName: 'san'),
    ItemModel(
        sound: 'assets/sounds/colors/gray.wav',
        engName: 'Gray',
        img: 'assets/images/colors/color_gray.png',
        JpName: 'shi'),
    ItemModel(
        sound: 'sounds/colors/green.wav',
        engName: 'Green',
        img: 'assets/images/colors/color_green.png',
        JpName: 'go'),
    ItemModel(
        sound: 'sounds/colors/red.wav',
        engName: 'Red',
        img: 'assets/images/colors/color_red.png',
        JpName: 'roku'),
    ItemModel(
        sound: 'sounds/colors/white.wav',
        engName: 'White',
        img: 'assets/images/colors/color_white.png',
        JpName: 'shichi'),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        engName: 'Yellow',
        img: 'assets/images/colors/yellow.png',
        JpName: 'hachi')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          title: const Text(
            'phases',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.blue,
          child: ListView.separated(
            itemCount: member.length,
            separatorBuilder: (context, index) => const Divider(
              height: 1,
              color: Colors.grey,
            ),
            itemBuilder: (context, index) {
              return Items(item: member[index]);
            },
          ),
        ));
  }
}
