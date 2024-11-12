import 'package:flutter/material.dart';

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
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[400],
                  fontSize: 23,
                  fontStyle: FontStyle.italic),
            ),
            const Image(
              image: AssetImage('assets/welcome_photo.png'),
              fit: BoxFit.fill,
            ),
            FilledButton(
              onPressed: () {},
              child: Text('Iniciar Sesión'),
              style: ButtonStyle(),
            ),
            TextButton(
                onPressed: () {},
                child: Text('No tienes una cuenta? Registrate aquí'))
          ],
        ),
      ),
    );
  }
}
