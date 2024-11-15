import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem(
      {super.key, required this.description, required this.imageAsset});
  final String description;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 2),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          shape: BoxShape.rectangle,
          gradient: LinearGradient(colors: [
            Colors.lime,
            Colors.lightGreenAccent,
            Colors.yellow,
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageAsset,
            scale: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(description),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_outlined))
            ],
          )
        ],
      ),
    );
  }
}
