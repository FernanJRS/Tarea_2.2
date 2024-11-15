import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  LogInButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 75),
      child: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            title,
            style: TextStyle(fontSize: 18),
          )),
    );
  }
}
