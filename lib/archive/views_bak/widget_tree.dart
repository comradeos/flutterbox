import 'package:flutter/material.dart';
import 'package:flutterbox/views/pages/home_page.dart';
import 'package:flutterbox/views/pages/profile_page.dart';
import 'widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

String title = 'Flutter Mapp';  // как єто раотает?

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // как єто раотает?
      ),
      body: pages.elementAt(0),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}