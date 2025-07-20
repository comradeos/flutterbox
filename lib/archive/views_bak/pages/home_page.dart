import 'package:flutter/material.dart';
import '../data/app_state.dart'; // appState должен быть ChangeNotifier

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: appState,
        builder: (context, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              centerText('Home Page'),
              centerText('Welcome to FlutterBox!'),
              centerText('Current user: ${appState.username}'),
              centerText('Nav index: ${appState.navbarIndex}'),
            ],
          );
        },
      ),
    );
  }

  SizedBox centerText(String text) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}