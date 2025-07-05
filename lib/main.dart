import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Material app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal, 
          brightness: Brightness.dark)
        ),
      // Scaffold
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          centerTitle: false,
          leading: Icon(Icons.login),
          actions: [
            Text('Action #1'),
            Text('Action #2'),
            Text('Action #3'),
          ],
          backgroundColor: Colors.teal,
        ),

        bottomNavigationBar:  NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.abc), label: 'ABC'),
            NavigationDestination(icon: Icon(Icons.account_balance_outlined), label: 'Account'),
          ],
          selectedIndex: 1,
          onDestinationSelected: (value) {
            print(value);
          }
        ),
      ),
    );
  }
}
