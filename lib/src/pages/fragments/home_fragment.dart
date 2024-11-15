import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
          child: Text(
            'Nunca Dejes de Explorar!!!',
            textAlign: TextAlign.center,
            style: GoogleFonts.kanit(),
          ),
        ),
        Image.asset('assets/home_page_photo1.jpg')
      ],
    );
  }
}
