import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {super.key,
      required this.userController,
      required this.title,
      this.keyboardType = TextInputType.text,
      this.iconButton,
      this.obscureText = false,
      this.prefixIcon,
      this.hintText});

  final TextEditingController userController;
  final String title;
  final TextInputType keyboardType;
  final IconButton? iconButton;
  final bool obscureText;
  final Icon? prefixIcon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: userController,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText ?? 'Ingrese su $title',
        label: Text(
          title,
          style: GoogleFonts.domine(
              fontWeight: FontWeight.w100, color: Colors.blueGrey[500]),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(25, 25)),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: iconButton,
      ),
    );
  }
}
