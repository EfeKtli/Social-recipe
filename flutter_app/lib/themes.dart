import 'package:flutter/material.dart';

const colors = {
  "primary": Colors.orange,
  "onprimary": Colors.white,
  "secondary": Colors.brown,
  "onsecondary": Color.fromARGB(255, 32, 43, 54),
  "surface": Color.fromRGBO(255, 253, 208, 1.0),
  "onsurface": Color.fromARGB(255, 0, 0, 25),
  "success": Colors.green,
  "error": Colors.red,
};

const darkColors = {
  "primary": Colors.orange,
  "onprimary": Colors.white,
  "secondary": Color.fromARGB(210, 180, 140, 70),
  "onsecondary": Color.fromARGB(255, 255, 255, 255),
  "surface": Color.fromARGB(255, 18, 18, 18),
  "onsurface": Color.fromARGB(255, 255, 255, 255),
  "success": Colors.green,
  "error": Colors.red,
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: colors["primary"]!,
    secondary: colors["secondary"]!,
    surface: colors["surface"]!,
    onPrimary: colors["onprimary"]!,
    onSecondary: colors["onsecondary"]!,
    onSurface: colors["onsurface"]!,
    error: colors["error"]!,
  ),
  scaffoldBackgroundColor: colors["surface"],
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: colors["onsecondary"]),
    titleLarge: TextStyle(color: colors["onprimary"]),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: colors["primary"],
    iconTheme: IconThemeData(color: colors["onprimary"]),
    titleTextStyle: TextStyle(
      color: colors["onprimary"],
      fontSize: 20,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: colors["onprimary"],
      backgroundColor: colors["primary"],
    ),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: darkColors["primary"]!,
    secondary: darkColors["secondary"]!,
    surface: darkColors["surface"]!,
    onPrimary: darkColors["onprimary"]!,
    onSecondary: darkColors["onsecondary"]!,
    onSurface: darkColors["onsurface"]!,
    error: darkColors["error"]!,
  ),
  scaffoldBackgroundColor: darkColors["surface"],
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: darkColors["onsecondary"]),
    titleLarge: TextStyle(color: darkColors["onprimary"]),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: darkColors["primary"],
    iconTheme: IconThemeData(color: darkColors["onprimary"]),
    titleTextStyle: TextStyle(
      color: darkColors["onprimary"],
      fontSize: 20,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: darkColors["onprimary"],
      backgroundColor: darkColors["primary"],
    ),
  ),
);
