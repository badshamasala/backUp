import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_1/globals/colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class AppTheme {
  static final darktheme = ThemeData(
      bottomAppBarColor: Colors.white,
      primaryColor: Colors.white,
      secondaryHeaderColor: Colors.white,
      backgroundColor: Colors.black,
      scaffoldBackgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark());
  static final lighttheme = ThemeData(
      primaryColor: primaryColorOfApp,
      secondaryHeaderColor: primaryColorOfApp,
      bottomAppBarColor: customTextColor,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light());
}
