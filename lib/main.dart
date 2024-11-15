import 'package:flutter/material.dart';
import 'package:login_app/src/pages/home_page.dart';
import 'package:login_app/src/pages/session_page.dart';
import 'package:login_app/src/pages/welcome_page.dart';
import 'package:login_app/src/shared/pages/page_not_build.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login app',
      initialRoute: '/inicio',
      routes: {
        '/': (context) => const WelcomePage(),
        '/sesion': (context) => const SessionPage(),
        '/inicio': (context) => const HomePage(),
        '/wait': (context) => const PageNotBuild(),
      },
    );
  }
}
