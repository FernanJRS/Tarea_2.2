import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/pages/fragments/login_fragment.dart';
import 'package:login_app/src/pages/fragments/register_fragment.dart';
import 'package:login_app/src/pages/widgets/background_card.dart';

class SessionPage extends StatefulWidget {
  const SessionPage({super.key});

  @override
  State<SessionPage> createState() => _SessionPageState();
}

class _SessionPageState extends State<SessionPage> {
  final pageViewController = PageController();
  bool colorText = true;

  @override
  Widget build(BuildContext context) {
    return BackgroundCard(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageViewController,
          children: [
            LoginFragment(),
            RegisterFragment(),
          ],
        ),
        bottomNavigationBar: Card(
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      pageViewController.jumpToPage(0);
                      colorText = !colorText;
                      setState(() {});
                    },
                    child: Text(
                      'Inicia Sesion',
                      style: GoogleFonts.figtree(
                        fontWeight: FontWeight.w700,
                        color: colorText
                            ? Colors.teal[900]
                            : Colors.indigoAccent[700],
                        fontSize: 17,
                      ),
                    )),
                const VerticalDivider(
                  indent: 10,
                  endIndent: 10,
                ),
                TextButton(
                    onPressed: () {
                      pageViewController.jumpToPage(1);
                      colorText = !colorText;
                      setState(() {});
                    },
                    child: Text(
                      'Registrate',
                      style: GoogleFonts.figtree(
                        fontWeight: FontWeight.w700,
                        color: colorText
                            ? Colors.indigoAccent[700]
                            : Colors.teal[900],
                        fontSize: 17,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
