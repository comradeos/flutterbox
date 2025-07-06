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
          brightness: Brightness.dark,
        ),
      ),
      // Scaffold
      home: Scaffold(
        appBar: AppBar(
          title: Text('гамно'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),

        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
                ListTile(title: Text('Hello')),
                ListTile(title: Text('World')),
              ],
            ),
          ),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/poop.png',
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),

        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.text_snippet_outlined),
              label: 'читай',
            ),
            NavigationDestination(
              icon: Icon(Icons.remove_red_eye_outlined),
              label: 'дивись',
            ),
          ],
          selectedIndex: 1,
          onDestinationSelected: (value) {
            print(value);
          },
        ),

        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                print('floating 1');
              },
              child: Icon(Icons.public),
            ),
            SizedBox(height: 10, width: 10),
            FloatingActionButton(
              onPressed: () {
                print('floating 2');
              },
              child: Icon(Icons.privacy_tip),
            ),
          ],
        ),
      ),
    );
  }
}
