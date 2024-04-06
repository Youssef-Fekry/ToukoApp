import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:audioplayers/audioplayers.dart';

class Items extends StatelessWidget {
  const Items({Key? key, required this.item}) : super(key: key);
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(item.img),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.JpName,
                  style: const TextStyle(
                    color: Color(0xffF5EEE6),
                  ),
                ),
                Text(
                  item.engName,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                splashColor: Colors.white,
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(
                    AssetSource(item.sound),
                  );
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 28,
                ),
              )),
        ],
      ),
    );
  }
}
