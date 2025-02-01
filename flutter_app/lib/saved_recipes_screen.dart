import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'recipe_provider.dart';

class SavedRecipesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final savedRecipes = context.watch<RecipeProvider>().savedRecipes;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Kaydedilen Tarifler'),
        backgroundColor: colorScheme.primary,
      ),
      body: ListView.builder(
        itemCount: savedRecipes.length,
        itemBuilder: (context, index) {
          final recipe = savedRecipes[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(recipe.description),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<RecipeProvider>().removeRecipe(recipe);
                      },
                      child: Text('Kaldır'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
