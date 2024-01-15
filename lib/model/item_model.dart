import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';

class ItemModel{
   Color color;
   String sound;
   ItemModel({required this.color,required this.sound});
  void playSound(){
     final player = AudioPlayer();
      player.setSource(AssetSource('sounds/coin.wav'));
  }
}
