import 'package:flutter/material.dart';

class PageNotBuild extends StatelessWidget {
  const PageNotBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Esta página no ha sido desarrollada todavía :('),
        const SizedBox(height: 10),
        Image.asset(
          'assets/page_error.png',
          scale: 2,
        )
      ],
    );
  }
}
