import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_ui/component/theme/color.dart';

class StyleTheme {
  static ThemeData themeData() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'SF-Pro-Text',
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)
          .copyWith(background: cBlack),
      primaryColor: cWhite,
      appBarTheme: const AppBarTheme(
        color: cBlack,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: cWhite,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      scaffoldBackgroundColor: cBlack,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: cBlack,
        selectedItemColor: cWhite,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontSize: 8,
          color: Colors.transparent,
        ),
        selectedIconTheme: IconThemeData(color: cWhite),
        unselectedIconTheme: IconThemeData(
          color: Color.fromARGB(60, 255, 255, 255),
        ),
      ),
    );
  }
}
