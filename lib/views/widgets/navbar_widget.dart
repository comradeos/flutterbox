import 'package:flutter/material.dart';
import 'package:flutterbox/views/data/notifiers.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
   int selectedIndex = 0;
   
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier, 
      builder: (context, selectedPage, child) {
        return NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.light_mode), label: 'Light'),
              NavigationDestination(icon: Icon(Icons.dark_mode), label: 'Dark'),
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            ],

            onDestinationSelected: (int value) {
            },

            selectedIndex: selectedPage,
          );
      }
    );
  }
}

