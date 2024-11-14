import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePageFragment extends StatelessWidget {
  const WelcomePageFragment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sumergete En \nUna Experiencia Única',
          style: GoogleFonts.playfairDisplay(
            fontSize: 35,
            color: Colors.deepPurple[600],
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        const Image(
          image: AssetImage('assets/welcome_photo.png'),
          fit: BoxFit.fill,
        ),
        const SizedBox(height: 30),
        FilledButton(
          onPressed: () {
            Navigator.of(context).popAndPushNamed('/sesion');
          },
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            textStyle:
                GoogleFonts.kanit(fontSize: 17, fontWeight: FontWeight.w300),
          ),
          child: const Text('Iniciar Sesión'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).popAndPushNamed('/sesion');
          },
          style: TextButton.styleFrom(
            textStyle:
                GoogleFonts.lora(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          child: const Text('No tienes una cuenta? Registrate aquí'),
        )
      ],
    );
  }
}
