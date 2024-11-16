import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/pages/fragments/widgets/card_item.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.indigo, Colors.deepPurple],
              begin: Alignment.centerLeft)),
      child: ListView(
        children: [
          Image.asset('assets/home_page_photo1.jpg'),
          const SizedBox(height: 10),
          Card(
            color: Colors.blueGrey[600],
            elevation: 2,
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
            child: Text(
              'Sigue Creando Para Algún Día Llegar \nA Donde Nadie Ha Podido!',
              textAlign: TextAlign.center,
              style: GoogleFonts.kanit(fontSize: 15, color: Colors.white),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardItem(
                description: 'Continua con \ntus proyectos',
                imageAsset: 'assets/option_3.png',
              ),
              CardItem(
                description: 'Mira que han \nhecho los demás',
                imageAsset: 'assets/option_2.jpg',
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardItem(
                description: 'Crea un nuevo \nproyecto',
                imageAsset: 'assets/option_1.png',
              ),
              CardItem(
                description: 'Hay problemas?\nContáctanos',
                imageAsset: 'assets/option_4.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
