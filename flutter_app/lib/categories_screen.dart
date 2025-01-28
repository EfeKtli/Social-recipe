import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      'name': 'Salatalar',
      'image':
          'https://d17wu0fn6x6rgz.cloudfront.net/img/w/tarif/mgt/beyaz-peynirli-akdeniz-salatasi-4.webp',
    },
    {
      'name': 'Ana Yemekler',
      'image':
          'https://www.rafinera.com/GetResizeImage?path=8dfffe9c-ccf3-4ec8-9c10-aa0ee6d99d16.jpg&width=340&height=340',
    },
    {
      'name': 'Tatlılar',
      'image':
          'https://www.uzaypastanesi.com/images/product/FRAMBUAZ-3_GORq.jpg',
    },
    {
      'name': 'Aperatifler',
      'image':
          'https://i.lezzet.com.tr/images-xxlarge-recipe/minik_aperatifler-e1767884-19a3-45b5-a0c7-6aba99223ec6.jpg',
    },
    {
      'name': 'İçecekler',
      'image':
          'https://www.canakkalekalem.com/images/haberler/2024/07/alkolsuz-kokteyl-tarifi-741.jpg',
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
          'https://abp.com.tr/wp-content/uploads/2021/03/atistirmaliklar-1.jpg',
    },
    {
      'name': 'Kahvaltılıklar',
      'image': 'https://tasfirin.net/resimler/urunler/190.jpg',
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
