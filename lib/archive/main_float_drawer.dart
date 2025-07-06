import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final _helloCounter = 0;
  final _worldCounter = 0;

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
          title: Text('Flutter'),
          centerTitle: true,

          // leading: Icon(Icons.login),

          /*
          actions: [
            Text('Action #1'),
            Text('Action #2'),
            Text('Action #3'),
          ],
          */
          backgroundColor: Colors.teal,
        ),

        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
                // DrawerHeader(child: Text('DrawerHeader')),
                ListTile(
                  title: Text('Hello'),
                  onTap: () {
                    print('hello');
                  },
                ),
                ListTile(title: Text('World')),
                ListTile(title: Text('Reload')),
                ListTile(title: Text('Somethig...')),
              ],
            ),
          ),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello: ' + _helloCounter.toString()),
              Text('Hello: ' + _helloCounter.toString()),
            ],
          ),
        ),

        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.abc), label: 'ABC'),
            NavigationDestination(
              icon: Icon(Icons.account_balance_outlined),
              label: 'Account',
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
