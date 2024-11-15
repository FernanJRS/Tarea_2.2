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
        label: Text(title),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(25, 25)),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: iconButton,
      ),
    );
  }
}
