import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterFragment extends StatelessWidget {
  const RegisterFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
      child: Card(
          elevation: 12,
          color: Colors.blueGrey[50],
          child: ListView(
            children: [
              Text(
                'Registrate y\n Entra en un Mundo Distinto!',
                textAlign: TextAlign.center,
                style: GoogleFonts.figtree(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ],
          )),
    );
  }
}
