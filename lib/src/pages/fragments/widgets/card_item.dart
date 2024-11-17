import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(2, 4),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(8)),
          shape: BoxShape.rectangle,
          gradient: LinearGradient(colors: [
            Colors.amberAccent,
            Colors.orangeAccent,
            Colors.blueAccent,
          ], begin: Alignment.bottomCenter)),
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
              Text(
                description,
                style: GoogleFonts.faustina(
                    fontWeight: FontWeight.bold, color: Colors.grey[800]),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_outlined))
            ],
          )
        ],
      ),
    );
  }
}
