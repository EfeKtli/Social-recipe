import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'recipe.dart';
import 'recipe_provider.dart';

class RecipesScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(name: 'Ton Balıklı Salata', description: 'Nefis Ton Balığı Tarifi'),
    Recipe(name: 'Tavuklu Sandviç Tarifi', description: 'Eforsuz Bİr tarif'),
    Recipe(
        name: 'Mercimek Çorbası',
        description: 'Restoranlardaki Meşhur Mercimek Çorbası Tarifi'),
    Recipe(
        name: 'Tavuk Pilav Tarifi',
        description: 'Hem Protein Hem Karbonhidrat Kaynağı'),
    Recipe(
        name: 'Kasap Sucuk Tarifi',
        description: 'Çok Lezzetli Oluyor Mutlaka Deneyin'),
    Recipe(
        name: 'Sivas Kavurma Tarifi',
        description: 'Baruthane Pilavcısı Tadında'),
    Recipe(name: 'Dominos Pizza Tarifi', description: 'Aşık Olacaksınız'),
    Recipe(name: 'Ekmek Tarifi', description: 'Taş Fırında Ekmek'),
    Recipe(
        name: 'Öğrenci Tarifi', description: 'Evde Flutter Öğrencisi Yapımı'),
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tarifler'),
        backgroundColor: colorScheme.primary,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<RecipeProvider>().addRecipe(recipe);
                        },
                        child: Text('Kaydet'),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          context.read<RecipeProvider>().removeRecipe(recipe);
                        },
                        child: Text('Kaldır'),
                      ),
                    ],
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
