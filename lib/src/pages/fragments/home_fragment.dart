import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/pages/fragments/widgets/card_item.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.indigo, Colors.deepPurple],
              begin: Alignment.centerLeft)),
      child: ListView(
        children: [
          Card(
            color: Colors.blueGrey[600],
            elevation: 2,
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
            child: Text(
              'Sigue Creando Para Algún Día Llegar \nDonde Nadie Ha Podido!',
              textAlign: TextAlign.center,
              style: GoogleFonts.kanit(fontSize: 15, color: Colors.white),
            ),
          ),
          Image.asset('assets/home_page_photo1.jpg'),
          const SizedBox(height: 30),
          GridView.extent(
            maxCrossAxisExtent: 2,
            children: [
              CardItem(
                description: 'Continua con \ntus proyectos',
                imageAsset: 'assets/option_3.png',
              ),
              CardItem(
                description: 'Mira que han \nhecho los demás',
                imageAsset: 'assets/option_2.jpg',
              ),
              CardItem(
                description: 'Crea un nuevo \nproyecto',
                imageAsset: 'assets/option_1.png',
              ),
              CardItem(
                description: 'Tienes dudas?  \nContáctanos',
                imageAsset: 'assets\option_4.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}
