import 'package:flutter/material.dart';
import 'package:tunes_play_app/model/item_model.dart';

class ItemList extends StatelessWidget {
  ItemList(
      {super.key,
      required this.item,
      required this.color,
      required this.onTap});
  ItemModel item;
  Color color;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: GestureDetector(
          onTap: (){
            item.playSound();
          },
          child: Container(
            color:item.color,
          ),
        ),

      );
  }
}
