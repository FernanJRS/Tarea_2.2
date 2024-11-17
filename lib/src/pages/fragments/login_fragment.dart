import 'package:flutter/material.dart';
import 'package:login_app/src/pages/fragments/widgets/login_view.dart';

class LoginFragment extends StatefulWidget {
  const LoginFragment({super.key});

  @override
  State<LoginFragment> createState() => _LoginFragmentState();
}

class _LoginFragmentState extends State<LoginFragment> {
  final userController = TextEditingController(text: 'fjriveras@unah.hn');
  final passwordController = TextEditingController(text: '20212120056');
  @override
  Widget build(BuildContext context) {
    return LoginView(
      userController: userController,
      passwordController: passwordController,
    );
  }
}
