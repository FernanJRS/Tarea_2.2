import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/pages/fragments/widgets/custome_input.dart';

class LoginFragment extends StatefulWidget {
  LoginFragment({super.key});

  @override
  State<LoginFragment> createState() => _LoginFragmentState();
}

class _LoginFragmentState extends State<LoginFragment> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 140),
      child: Card(
        elevation: 12,
        color: Colors.blueGrey[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hey!\nInicia Sesión y\nContinua Explorando!',
              textAlign: TextAlign.center,
              style: GoogleFonts.figtree(
                color: Colors.black87,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  CustomInput(
                    title: 'usuario',
                    userController: userController,
                  ),
                  CustomInput(
                    title: 'contraseña',
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
            Divider(
              height: 15,
              indent: 80,
              endIndent: 80,
            ),
            TextButton(
                onPressed: () {},
                child: Text('Olvidaste tu contraseña? Haz click aquí')),
            FloatingActionButton.extended(
                onPressed: () {}, label: Text('Iniciar Sesión'))
          ],
        ),
      ),
    );
  }
}
