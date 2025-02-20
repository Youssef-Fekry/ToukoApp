import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key, this.text, this.color, this.onTap})
      : super(key: key);
  final String? text;
  final Color? color;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            text!,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
