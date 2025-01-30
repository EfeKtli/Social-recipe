import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'themes.dart'; // Temalarınızı içe aktarın
import 'welcome_screen.dart'; // WelcomeScreen dosyasını içe aktarın
import 'home_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'search_screen.dart';
import 'settings_screen.dart';
import 'categories_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => WelcomeScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => SearchScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => SettingsScreen(),
    ),
    GoRoute(
      path: '/categories',
      builder: (context, state) => CategoriesScreen(),
    ),
  ],
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: lightTheme, // Light temayı kullan
      darkTheme: darkTheme, // Dark temayı kullan
      themeMode: ThemeMode.dark, // Tema modunu light yap
      routerConfig: router,
    );
  }
}
