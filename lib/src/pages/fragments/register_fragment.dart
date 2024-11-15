import 'package:flutter/material.dart';
import 'package:login_app/src/pages/fragments/widgets/register_view.dart';

class RegisterFragment extends StatefulWidget {
  const RegisterFragment({super.key});

  @override
  State<RegisterFragment> createState() => _RegisterFragmentState();
}

class _RegisterFragmentState extends State<RegisterFragment> {
  final nameController = TextEditingController();
  final mailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmationPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return RegisterView(
        nameController: nameController,
        mailController: mailController,
        phoneController: phoneController,
        passwordController: passwordController,
        confirmationPasswordController: confirmationPasswordController);
  }
}
