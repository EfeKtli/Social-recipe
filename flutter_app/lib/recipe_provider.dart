import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeProvider with ChangeNotifier {
  List<Recipe> _savedRecipes = [];

  List<Recipe> get savedRecipes => _savedRecipes;

  void addRecipe(Recipe recipe) {
    _savedRecipes.add(recipe);
    notifyListeners();
  }

  void removeRecipe(Recipe recipe) {
    _savedRecipes.remove(recipe);
    notifyListeners();
  }
}
