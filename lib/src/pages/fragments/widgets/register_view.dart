import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/pages/fragments/widgets/custome_input.dart';

class RegisterView extends StatefulWidget {
  RegisterView({
    super.key,
    required this.nameController,
    required this.mailController,
    required this.phoneController,
    required this.passwordController,
    required this.confirmationPasswordController,
    this.showPass1 = true,
    this.showPass2 = true,
  });

  final TextEditingController nameController;
  final TextEditingController mailController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final TextEditingController confirmationPasswordController;
  bool showPass1;
  bool showPass2;

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Registrate y\n Entra en un Mundo Distinto!',
          textAlign: TextAlign.center,
          style: GoogleFonts.figtree(
            color: Colors.black87,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              CustomInput(
                title: 'Nombre',
                userController: widget.nameController,
                prefixIcon: const Icon(Icons.emoji_people_sharp),
              ),
              const SizedBox(height: 8),
              CustomInput(
                title: 'Correo',
                userController: widget.mailController,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: const Icon(Icons.mail_outline),
              ),
              const SizedBox(height: 8),
              CustomInput(
                title: 'Teléfono',
                userController: widget.phoneController,
                keyboardType: TextInputType.number,
                prefixIcon: const Icon(Icons.phone_android_outlined),
              ),
              const SizedBox(height: 8),
              CustomInput(
                title: 'Contraseña',
                userController: widget.passwordController,
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: const Icon(Icons.lock_outline),
                obscureText: widget.showPass1,
                iconButton: IconButton(
                    onPressed: () {
                      widget.showPass1 = !widget.showPass1;
                      setState(() {});
                    },
                    icon: const Icon(Icons.remove_red_eye_sharp)),
              ),
              const SizedBox(height: 8),
              CustomInput(
                title: 'Confirma tu Contraseña',
                userController: widget.confirmationPasswordController,
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: const Icon(Icons.lock_outline),
                hintText: 'Confirme su contraseña',
                obscureText: widget.showPass2,
                iconButton: IconButton(
                    onPressed: () {
                      widget.showPass2 = !widget.showPass2;
                      setState(() {});
                    },
                    icon: const Icon(Icons.remove_red_eye_sharp)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 8),
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: Text(
              'Registrarse',
              style: TextStyle(fontSize: 18),
            ),
          ),
        )
      ],
    );
  }
}
