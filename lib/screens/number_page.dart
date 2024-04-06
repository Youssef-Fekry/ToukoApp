// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:toku_app/components/items.dart';
import 'package:toku_app/models/item_model.dart';

class NumberPages extends StatelessWidget {
  const NumberPages({
    Key? key,
  }) : super(key: key);
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: 'sounds/numbers/number_one_sound.mp3',
        engName: 'One',
        img: 'assets/images/numbers/number_one.png',
        JpName: 'ichi'),
    ItemModel(
        sound: 'sounds/numbers/number_two_sound.mp3',
        engName: 'Two',
        img: 'assets/images/numbers/number_two.png',
        JpName: 'ni'),
    ItemModel(
        sound: 'sounds/numbers/number_three_sound.mp3',
        engName: 'Three',
        img: 'assets/images/numbers/number_three.png',
        JpName: 'san'),
    ItemModel(
        sound: 'sounds/numbers/number_four_sound.mp3',
        engName: 'Four',
        img: 'assets/images/numbers/number_four.png',
        JpName: 'shi'),
    ItemModel(
        sound: 'sounds/numbers/number_five_sound.mp3',
        engName: 'Five',
        img: 'assets/images/numbers/number_five.png',
        JpName: 'go'),
    ItemModel(
        sound: 'sounds/numbers/number_six_sound.mp3',
        engName: 'Six',
        img: 'assets/images/numbers/number_six.png',
        JpName: 'roku'),
    ItemModel(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        engName: 'Seven',
        img: 'assets/images/numbers/number_seven.png',
        JpName: 'shichi'),
    ItemModel(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        engName: 'Eight',
        img: 'assets/images/numbers/number_eight.png',
        JpName: 'hachi'),
    ItemModel(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        engName: 'Nine',
        img: 'assets/images/numbers/number_nine.png',
        JpName: 'kyuu'),
    ItemModel(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        engName: 'Ten',
        img: 'assets/images/numbers/number_ten.png',
        JpName: 'juu'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          title: const Text(
            'Numbers',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          color: Colors.orange,
          child: ListView.separated(
            itemCount: numbers.length,
            separatorBuilder: (context, index) => const SizedBox(),
            itemBuilder: (context, index) {
              return Items(item: numbers[index]);
            },
          ),
        ));
  }

  //another way to create the Widegt more than one time by using a loop
  // List<Items> getList(List<Numbers> numbers) {
  //   List<Items> itemlist = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemlist.add(Items(number: numbers[i]));
  //   }
  //   return itemlist;
  // }
}
// ListView.separated(
//   separatorBuilder: (context, index) => Divider(
//         color: Colors.black,
//       ),
//   itemCount: 20,
//   itemBuilder: (context, index) => Padding(
//         padding: EdgeInsets.all(8.0),
//         child: Center(child: Text("Index $index")),
//       ),
// )

// //body: ListView.builder(
        
//         itemCount: numbers.length,
//         itemBuilder: (context, index) {
//           return Items(number: numbers[index]);
//         },
//       ),

// body: ListView.separated(
//           scrollDirection: axisDirectionToAxis(),
//           itemCount: numbers.length,
//           separatorBuilder: (context, index) => Divider(
//             height: 1,
//             color: Colors.grey,
//           ),
//           itemBuilder: (context, index) {
//             return Items(number: numbers[index]);
//           },
//         )