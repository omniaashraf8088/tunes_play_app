import 'package:flutter/material.dart';
import 'package:tunes_play_app/app_color.dart';

import '../model/item_model.dart';
import '../widget/item.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  List<ItemModel> item=[
    ItemModel(color: AppColor.oneColor, sound: 'note1.wav'),
    ItemModel(color: AppColor.twoColor, sound: 'note2.wav'),
    ItemModel(color: AppColor.threeColor, sound: 'note3.wav'),
    ItemModel(color: AppColor.fourColor, sound: 'note4.wav'),
    ItemModel(color: AppColor.fiveColor, sound: 'note5.wav'),
    ItemModel(color: AppColor.sixColor, sound: 'note6.wav'),
    ItemModel(color: AppColor.sevenColor, sound: 'note7.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColor.titleColor,
        title: const Text(
          'Tunes Play App',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Column(
        children: item.map((e) => ItemList(item: e, color:, onTap: (){
          item.playSound();
        }),).toList(),
      ),
    );
  }
}
