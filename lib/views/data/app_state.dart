import 'package:flutter/foundation.dart';

class AppState extends ChangeNotifier {
  int navbarIndex = 0;
  String username = 'Guest';

  void setNavbarIndex(int value) {
    navbarIndex = value;
    notifyListeners();
  }

  void setUsername(String value) {
    username = value;
    notifyListeners();
  }
}

final appState = AppState();