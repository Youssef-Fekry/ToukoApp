import 'package:flutter/material.dart';
import 'package:toku_app/components/items.dart';
import 'package:toku_app/models/item_model.dart';

// ignore: camel_case_types
class family_members extends StatelessWidget {
  const family_members({Key? key}) : super(key: key);
  final List<ItemModel> member = const [
    ItemModel(
        sound: 'sounds/family_members/father.wav',
        engName: 'Father',
        img: 'assets/images/family_members/family_father.png',
        JpName: 'ichi'),
    ItemModel(
        sound: 'sounds/family_members/mother.wav',
        engName: 'Mother',
        img: 'assets/images/family_members/family_mother.png',
        JpName: 'ni'),
    ItemModel(
        sound: 'sounds/family_members/gfather.wav',
        engName: 'Grand Father',
        img: 'assets/images/family_members/family_grandfather.png',
        JpName: 'san'),
    ItemModel(
        sound: 'sounds/family_members/grandmother.wav',
        engName: 'Grand Mother',
        img: 'assets/images/family_members/family_grandmother.png',
        JpName: 'shi'),
    ItemModel(
        sound: 'sounds/family_members/olderbother.wav',
        engName: 'Older Bother',
        img: 'assets/images/family_members/family_older_brother.png',
        JpName: 'go'),
    ItemModel(
        sound: 'sounds/family_members/oldersister.wav',
        engName: 'Older Sister',
        img: 'assets/images/family_members/family_older_sister.png',
        JpName: 'roku'),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        engName: 'Son',
        img: 'assets/images/family_members/family_son.png',
        JpName: 'shichi'),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        engName: 'Daughter',
        img: 'assets/images/family_members/family_daughter.png',
        JpName: 'hachi'),
    ItemModel(
        sound: 'sounds/family_members/youngerbrohter.wav',
        engName: 'Younger Brohter',
        img: 'assets/images/family_members/family_younger_brother.png',
        JpName: 'kyuu'),
    ItemModel(
        sound: 'sounds/family_members/youngersister.wav',
        engName: 'Younger Sister',
        img: 'assets/images/family_members/family_younger_sister.png',
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
            'Family Members',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: Container(
          color: Colors.green,
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