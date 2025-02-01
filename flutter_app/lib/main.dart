import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'themes.dart';
import 'welcome_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'search_screen.dart';
import 'settings_screen.dart';
import 'categories_screen.dart';
import 'recipes_screen.dart';
import 'saved_recipes_screen.dart';
import 'recipe_provider.dart';

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
    GoRoute(
      path: '/recipes',
      builder: (context, state) => RecipesScreen(),
    ),
    GoRoute(
      path: '/saved_recipes',
      builder: (context, state) => SavedRecipesScreen(),
    ),
  ],
);

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => RecipeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark, // Cihazın varsayılan tema ayarını kullan
      routerConfig: router,
    );
  }
}
