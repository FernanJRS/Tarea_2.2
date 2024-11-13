import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[500],
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 46, horizontal: 15),
        elevation: 8,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Explora una Dimensión Diferente',
              style: GoogleFonts.playfairDisplay(
                  fontSize: 30,
                  color: Colors.deepPurple[600],
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Image(
              image: AssetImage('assets/welcome_photo.png'),
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 30),
            FilledButton(
              onPressed: () {},
              child: Text(
                'Iniciar Sesión',
              ),
              style: FilledButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                textStyle: GoogleFonts.kanit(
                    fontSize: 17, fontWeight: FontWeight.w300),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('No tienes una cuenta? Registrate aquí'),
              style: TextButton.styleFrom(
                textStyle:
                    GoogleFonts.lora(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
