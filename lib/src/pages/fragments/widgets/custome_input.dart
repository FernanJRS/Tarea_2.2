import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {super.key,
      required this.userController,
      required this.title,
      this.keyboardType = TextInputType.text,
      this.iconButton,
      this.obscureText = false,
      this.prefixIcon,
      this.maxChars = 15});

  final TextEditingController userController;
  final String title;
  final TextInputType keyboardType;
  final IconButton? iconButton;
  final bool obscureText;
  final Icon? prefixIcon;
  final int maxChars;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: userController,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: 'Ingrese su $title',
        label: Text(title),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: iconButton,
      ),
      maxLength: maxChars,
    );
  }
}
