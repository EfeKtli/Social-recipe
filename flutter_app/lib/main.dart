import 'package:flutter/material.dart';
import 'themes.dart';
import 'welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      themeMode: ThemeMode.light, // Dark temayı kullan
      theme: lightTheme, // Light tema
      darkTheme: darkTheme, // Dark tema
      home: WelcomeScreen(), // Ana ekran
    );
  }
}
