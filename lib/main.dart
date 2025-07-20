import 'package:flutter/material.dart';
import 'views/widgets/navigation_bar_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('App')),
        bottomNavigationBar: const AppNavigationBar(),
      ),
    );
  }
}