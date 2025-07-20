import 'package:flutter/material.dart';
import 'package:flutterbox/views/data/app_state.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchValue<int>(
      listenable: AppState.navigationIndex,
      builder: (index) {
        return NavigationBar(
          selectedIndex: index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.abc), label: 'AAA'),
            NavigationDestination(icon: Icon(Icons.ac_unit), label: 'BBB'),
          ],
          onDestinationSelected: (value) {
            AppState.navigationIndex.value = value;
          },
        );
      },
    );
  }
}