import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleSessionPage extends StatelessWidget {
  const TitleSessionPage(
      {super.key, required this.data, required this.fontSize});

  final String data;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.left,
      style: GoogleFonts.permanentMarker(
        color: Colors.black87,
        fontSize: fontSize,
        letterSpacing: 2,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}
