import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageDialog extends StatelessWidget {
  const MessageDialog({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Error al Registrarse',
        style: GoogleFonts.ptSerif(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black87),
        textAlign: TextAlign.center,
      ),
      content: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 120,
              alignment: Alignment.center,
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: GoogleFonts.ptSerif(
                    fontSize: 13,
                    height: 2,
                    color: Colors.blueGrey[700],
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 15),
            FloatingActionButton.extended(
              extendedPadding: const EdgeInsets.symmetric(horizontal: 20),
              onPressed: () {
                Navigator.pop(context);
              },
              label: Text(
                'Regresar',
                style: GoogleFonts.ptSerif(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
