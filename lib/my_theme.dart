import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(size: 36, color: Colors.black),
          selectedLabelStyle: TextStyle(color: Colors.black),
          unselectedIconTheme: IconThemeData(size: 26, color: Colors.white),
          showUnselectedLabels: false,
          showSelectedLabels: true,
          selectedItemColor: Colors.black));
}
