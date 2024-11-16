import 'package:flutter/material.dart';
import 'package:login_app/src/pages/fragments/widgets/custome_input.dart';
import 'package:login_app/src/pages/fragments/widgets/log_in_button.dart';
import 'package:login_app/src/pages/fragments/widgets/message_dialog.dart';
import 'package:login_app/src/pages/fragments/widgets/title_session_page.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 120),
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: TitleSessionPage(
            data: 'Registrate y\nExplora un Mundo Distinto!',
            fontSize: 22,
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
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: LogInButton(
              title: 'Registrarse',
              onPressed: () {
                var cont = 0;

                if (widget.nameController.text.trim().length >= 3 &&
                    widget.nameController.text.trim().length <= 10) {
                  cont += 1;
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const MessageDialog(
                          description:
                              'El nombre debe tener mímino 3 caracteres y máximo 10 caracteres.',
                        );
                      });
                }
                if (widget.mailController.text.contains('@') == true &&
                    widget.mailController.text.isNotEmpty == true) {
                  final strPrueba =
                      widget.mailController.text.replaceFirst('@', '');
                  if (strPrueba.contains('@') == true) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const MessageDialog(
                            description:
                                'El correo solo puede contener un "@".',
                          );
                        });
                  } else {
                    final strCompr = widget.mailController.text.split('@');

                    if (strCompr[1] == 'unah.edu.hn' ||
                        strCompr[1] == 'unah.hn') {
                      cont += 1;
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const MessageDialog(
                              description:
                                  'El correo debe finalizar en unah.edu.hn ó unah.hn.',
                            );
                          });
                    }
                  }
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const MessageDialog(
                          description: 'El correo ingresado no es válido.',
                        );
                      });
                }

                if (widget.phoneController.text[0] == '3' ||
                    widget.phoneController.text[0] == '9') {
                  if (widget.phoneController.text.trim().length == 8) {
                    cont += 1;
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const MessageDialog(
                            description:
                                'El teléfono ingresado debe contener únicamente 8 números.',
                          );
                        });
                  }
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const MessageDialog(
                          description:
                              'El teléfono ingresado debe comenzar con un 3 o un 9.',
                        );
                      });
                }

                if (widget.passwordController.text.trim().length >= 8) {
                  var contUnaMayus = 0;
                  for (var i; i < widget.passwordController.text.length; i++) {
                    if (widget.passwordController.text[i] ==
                        widget.passwordController.text[i].toUpperCase()) {
                      contUnaMayus += 1;
                    }
                  }

                  var contCarEsp = 0;
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const MessageDialog(
                          description:
                              'La contraseña debe contener mínimo 8 caracteres.',
                        );
                      });
                }

                if (cont == 4) {
                  if (widget.passwordController.text !=
                      widget.confirmationPasswordController.text) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const MessageDialog(
                            description:
                                'Verifica que las contraseñas ingresadas sean iguales.',
                          );
                        });
                  } else {
                    cont += 1;
                  }
                }

                if (cont == 5) {
                  print('Datos ingresados por el usuario:');
                  print('Nombre: ${widget.nameController.text}');
                  print('Correo: ${widget.mailController.text}');
                  print('Teléfono: ${widget.phoneController.text}');
                  print('Contraseña: ${widget.passwordController.text}');
                }
              }),
        ),
      ],
    );
  }
}
