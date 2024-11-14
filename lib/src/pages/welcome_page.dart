import 'package:flutter/material.dart';
import 'package:login_app/src/pages/fragments/welcome_fragment.dart';
import 'package:login_app/src/pages/widgets/background_card.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return const BackgroundCard(
      child: WelcomePageFragment(),
    );
  }
}
