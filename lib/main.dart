import 'package:flutter/material.dart';

import 'home/home_screen.dart';
import 'home/quran/sura_details/sura_details_screen.dart';
import 'my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
        SuraDetailsScreen.routName: (_) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
