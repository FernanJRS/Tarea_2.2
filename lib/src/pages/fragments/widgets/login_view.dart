import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/pages/fragments/widgets/custome_input.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final userController = TextEditingController();

  final passwordController = TextEditingController();

  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Hey!\nInicia Sesión y\nContinua Explorando!',
          textAlign: TextAlign.center,
          style: GoogleFonts.figtree(
            color: Colors.black87,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              CustomInput(
                title: 'Correo',
                userController: userController,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomInput(
                title: 'Contraseña',
                userController: passwordController,
                keyboardType: TextInputType.visiblePassword,
                iconButton: IconButton(
                    onPressed: () {
                      showPass = !showPass;
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.remove_red_eye_rounded,
                      color: Colors.blueGrey[900],
                    )),
                obscureText: showPass,
              ),
            ],
          ),
        ),
        const Divider(
          height: 15,
          indent: 30,
          endIndent: 30,
        ),
        TextButton(
            onPressed: () {},
            child: Text('Olvidaste tu contraseña? Haz click aquí')),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: FloatingActionButton.extended(
              onPressed: () {}, label: Text('Iniciar Sesión')),
        )
      ],
    );
  }
}
