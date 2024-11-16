import 'package:flutter/material.dart';
import 'package:login_app/src/pages/home_page.dart';
import 'package:login_app/src/pages/session_page.dart';
import 'package:login_app/src/pages/welcome_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login app',
      initialRoute: '/sesion',
      routes: {
        '/': (context) => const WelcomePage(),
        '/sesion': (context) => const SessionPage(),
        '/inicio': (context) => const HomePage(),
      },
    );
  }
}
