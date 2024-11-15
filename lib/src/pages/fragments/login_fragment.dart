import 'package:flutter/material.dart';
import 'package:login_app/src/pages/fragments/widgets/login_view.dart';

class LoginFragment extends StatefulWidget {
  LoginFragment({super.key});

  @override
  State<LoginFragment> createState() => _LoginFragmentState();
}

class _LoginFragmentState extends State<LoginFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 140),
      child: Card(
        elevation: 12,
        color: Colors.blueGrey[50],
        child: LoginView(),
      ),
    );
  }
}
