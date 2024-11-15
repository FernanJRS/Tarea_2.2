import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInButton extends StatefulWidget {
  LogInButton({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  void Function()? onPressed;

  @override
  State<LogInButton> createState() => _LogInButtonState();
}

class _LogInButtonState extends State<LogInButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 75),
      child: FloatingActionButton.extended(
        elevation: 15,
        onPressed: widget.onPressed,
        label: Text(
          widget.title,
          style: GoogleFonts.dmSerifDisplay(
              fontSize: 20, color: Colors.indigo[700]),
        ),
      ),
    );
  }
}
