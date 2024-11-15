import 'package:flutter/material.dart';

class PageNotBuild extends StatelessWidget {
  const PageNotBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Esta página no ha sido desarrollada todavía :('),
        Image.asset(
          'assets/page_error.png',
          scale: 2,
        )
      ],
    );
  }
}
