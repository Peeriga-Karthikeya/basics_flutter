import 'package:flutter/widgets.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkMode = false;

  void toggleMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
