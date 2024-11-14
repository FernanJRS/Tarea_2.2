import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/pages/fragments/login_fragment.dart';
import 'package:login_app/src/pages/fragments/register_fragment.dart';
import 'package:login_app/src/pages/widgets/background_card.dart';

class SessionPage extends StatefulWidget {
  SessionPage({super.key});

  @override
  State<SessionPage> createState() => _SessionPageState();
}

class _SessionPageState extends State<SessionPage> {
  final pageViewController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return BackgroundCard(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageViewController,
          onPageChanged: (index) {
            currentPage = index;
            setState(() {});
          },
          children: const [
            LoginFragment(),
            RegisterFragment(),
          ],
        ),
        bottomNavigationBar: Card(
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      pageViewController.jumpToPage(0);
                      setState(() {});
                    },
                    child: Text('Inicia Sesion')),
                const VerticalDivider(
                  indent: 10,
                  endIndent: 10,
                ),
                TextButton(
                    onPressed: () {
                      pageViewController.jumpToPage(1);
                      setState(() {});
                    },
                    child: Text('Registrate'))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

// Text(
//           'Inicia Sesion e Interactua en un Mundo Como en Ningún Otro',
//           style: GoogleFonts.pacifico(
//             color: Colors.teal[700],
//             fontSize: 26,
//           ),
//           textAlign: TextAlign.center,
//         )