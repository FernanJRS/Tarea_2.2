import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool cambio = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blueGrey[700],
        leadingWidth: 62,
        leading: CircleAvatar(
          child: Image.asset(
            'assets/profile_picture.png',
          ),
        ),
        title: Text(
          'Fernando Josué Rivera\nfjriveras@unah.hn',
          style: GoogleFonts.exo(fontSize: 20, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                cambio = !cambio;
                setState(() {});
              },
              icon: Icon(
                Icons.newspaper_rounded,
                color: cambio ? Colors.white : Colors.indigo[100],
              ))
        ],
      ),
      body: Text('Hola'),
    );
  }
}
