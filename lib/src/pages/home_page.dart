import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/models/arguments/login_arguments.dart';
import 'package:login_app/src/pages/fragments/home_fragment.dart';
import 'package:login_app/src/pages/widgets/bottom_menu.dart';
import 'package:login_app/src/shared/pages/page_not_build.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool cambio = true;
  int pageSelected = 0;
  final pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as LoginArguments;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.blueGrey[700],
        leadingWidth: 62,
        leading: CircleAvatar(
          child: Image.asset(
            'assets/profile_picture.png',
          ),
        ),
        title: Text(
          '${arguments.userName}\n${arguments.mail}',
          style: GoogleFonts.exo(fontSize: 19, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                cambio = !cambio;
                setState(() {});
              },
              icon: Icon(
                Icons.newspaper_outlined,
                color: cambio ? Colors.white : Colors.indigo[100],
              ))
        ],
      ),
      body: PageView(
        controller: pageViewController,
        allowImplicitScrolling: false,
        onPageChanged: (index) {
          pageSelected = index;
          setState(() {});
        },
        children: const [
          HomeFragment(),
          PageNotBuild(),
          PageNotBuild(),
        ],
      ),
      bottomNavigationBar: BottomNavigationMenu(
        currentSelection: pageSelected,
        onPageSelected: (pageSelected) {
          pageViewController.jumpToPage(pageSelected);
        },
      ),
    );
  }
}
