import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      'name': 'Salatalar',
      'image':
          'https://i.lezzet.com.tr/images-xxlarge-secondary/doyurucu-salata-tarifleri-d449ac4b-331c-4afe-a3ea-fb51b5863f6f',
    },
    {
      'name': 'Ana Yemekler',
      'image':
          'https://i.lezzet.com.tr/images-xxlarge-recipe/sebzeli_et_sote-7b478893-0f24-43d7-be49-3a18eea61781.jpg',
    },
    {
      'name': 'Tatlılar',
      'image':
          'https://i.lezzet.com.tr/images-xxlarge-recipe/bayat_ekmek_tatlisi-60f6eddc-00e2-46f0-9c01-aebc9f949e7f.jpg',
    },
    {
      'name': 'Aperatifler',
      'image':
          'https://i.lezzet.com.tr/images-xxlarge-recipe/minik_aperatifler-e1767884-19a3-45b5-a0c7-6aba99223ec6.jpg',
    },
    {
      'name': 'İçecekler',
      'image':
          'https://i.lezzet.com.tr/images-xxlarge-recipe/ev-yapimi-konsantre-limonata-01e50b99-5890-411f-a4c2-997a71e8a5cc.jpg',
    },
    {
      'name': 'Çorbalar',
      'image':
          'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/B8EF66BD-C565-430C-A945-D94DB606C818/Derivates/186F86D5-053E-4EB7-A1BF-3D22FC9D4F56.jpg',
    },
    {
      'name': 'Sandviçler',
      'image': 'https://images.deliveryhero.io/image/fd-tr/LH/lvyn-listing.jpg',
    },
    {
      'name': 'Atıştırmalıklar',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6j5yHr_lihzovtRVShaj6vI8NbbSlphzNdQ&s',
    },
    {
      'name': 'Kahvaltılıklar',
      'image':
          'https://i.lezzet.com.tr/images-xxlarge-secondary/kolay-kahvalti-tarifleri-260cd3f0-2a1a-458e-b0ae-f0d9894f6b44',
    },
    {
      'name': 'Makarna',
      'image':
          'https://i.lezzet.com.tr/images-xxlarge/salcali-makarna-f60e9ce7-6ad0-49ab-8dae-a3f6aa385734',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategoriler'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15.0),
                      ),
                      child: Image.network(
                        categories[index]['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categories[index]['name']!,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
