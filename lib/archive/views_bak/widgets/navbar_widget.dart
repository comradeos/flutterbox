import 'package:flutter/material.dart';
import '../data/app_state.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: appState,
      builder: (context, _) {
        return NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.light_mode), label: 'Light'),
            NavigationDestination(icon: Icon(Icons.dark_mode), label: 'Dark'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          selectedIndex: appState.navbarIndex,
          onDestinationSelected: (int value) {
            appState.setNavbarIndex(value); // обновляем глобальное состояние
          },
        );
      },
    );
  }
}