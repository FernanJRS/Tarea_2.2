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
          borderRadius: BorderRadius.all(Radius.circular(8)),
          shape: BoxShape.rectangle,
          gradient: LinearGradient(colors: [
            Colors.lightGreenAccent,
            Colors.limeAccent,
            Colors.yellowAccent,
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
              Text(
                description,
                style: GoogleFonts.faustina(
                    fontWeight: FontWeight.w700, color: Colors.blueGrey[800]),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_outlined))
            ],
          )
        ],
      ),
    );
  }
}
