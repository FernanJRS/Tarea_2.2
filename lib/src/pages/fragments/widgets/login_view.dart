import 'package:flutter/material.dart';
import 'package:login_app/src/pages/fragments/widgets/custome_input.dart';
import 'package:login_app/src/pages/fragments/widgets/log_in_button.dart';
import 'package:login_app/src/pages/fragments/widgets/title_session_page.dart';
import 'package:login_app/src/api/login_info.dart';
import 'package:login_app/src/models/arguments/login_arguments.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    super.key,
    required this.userController,
    required this.passwordController,
  });

  final TextEditingController userController;
  final TextEditingController passwordController;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 120),
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: TitleSessionPage(
            data: 'Hey!\nInicia Sesión y\nContinua Creando!',
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
          child: Column(
            children: [
              CustomInput(
                title: 'Correo',
                userController: widget.userController,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: const Icon(Icons.mail_outline),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomInput(
                title: 'Contraseña',
                userController: widget.passwordController,
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
                prefixIcon: const Icon(Icons.lock_outline),
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
            onPressed: () {
              print('Uis...');
            },
            child: const Text('Olvidaste tu contraseña? Haz click aquí')),
        LogInButton(
          title: 'Iniciar Sesion',
          onPressed: () {
            if (widget.userController.text.trim().isEmpty &&
                widget.passwordController.text.trim().isEmpty) {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => BottomSheet(
                      onClosing: () {},
                      builder: (context) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          child: Text(
                            'Los campos de correo y contraseña \nno pueden ir vacios.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ptSerif(
                                fontSize: 17,
                                height: 2,
                                color: Colors.blueGrey[900],
                                fontWeight: FontWeight.w600),
                          ),
                        );
                      }));
            } else if (widget.userController.text == loginInfo[0]['mail'] &&
                widget.passwordController.text == loginInfo[0]['password']) {
              Navigator.popAndPushNamed(context, '/inicio',
                  arguments: LoginArguments(
                    widget.userController.text,
                    loginInfo[0]['userName']!,
                  ));
            } else {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => BottomSheet(
                      onClosing: () {},
                      builder: (context) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          child: Text(
                            'Verifique que el correo y la contraseña \nsean correctas.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ptSerif(
                                fontSize: 17,
                                height: 2,
                                color: Colors.blueGrey[900],
                                fontWeight: FontWeight.w600),
                          ),
                        );
                      }));
            }
          },
        ),
      ],
    );
  }
}
