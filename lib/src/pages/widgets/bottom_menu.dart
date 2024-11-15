import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu(
      {super.key, this.currentSelection = 0, required this.onPageSelected});

  final int currentSelection;
  final void Function(int) onPageSelected;

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  int currentItemIndex = 0;

  @override
  void initState() {
    super.initState();
    currentItemIndex = widget.currentSelection;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedLabelStyle: GoogleFonts.aBeeZee(),
      selectedLabelStyle: GoogleFonts.exo(),
      currentIndex: currentItemIndex,
      onTap: (currentIndex) {
        currentItemIndex = currentIndex;
        widget.onPageSelected(currentItemIndex);
        setState(() {});
      },
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black87,
      backgroundColor: Colors.blueGrey[600],
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_outlined),
          label: 'Mensajes',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shop_2_outlined), label: 'Tienda'),
      ],
    );
  }
}
