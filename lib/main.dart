import 'package:flutter/material.dart';
import 'package:flutterbox/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String appTitle = 'My App';
 
  bool dark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.tealAccent, 
          brightness: dark == true 
            ? Brightness.dark 
            : Brightness.light
        ),
      ),
      home: WidgetTree()
    );
  }
}
