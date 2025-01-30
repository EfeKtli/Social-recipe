import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> _allItems = [
    'Ton Balıklı Salata',
    'Düşük Kalorili Pizza',
    'Fit Kek Tarifi',
    'Avokadolu Sandviç',
    'Sebzeli Omlet',
    'Meyveli Yoğurt'
  ];

  List<String> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = _allItems;
  }

  void _filterItems(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredItems = _allItems;
      } else {
        _filteredItems = _allItems
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme; // Tema renklerini çek

    return Scaffold(
      backgroundColor: colorScheme.surface, // Arka plan rengi
      appBar: AppBar(
        title: Text('Arama'),
        backgroundColor: colorScheme.primary, // AppBar arka plan rengi
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Arama Kutusu
            TextField(
              onChanged: (value) {
                _filterItems(value);
              },
              decoration: InputDecoration(
                labelText: 'Ara',
                labelStyle:
                    TextStyle(color: colorScheme.onSurface), // Label rengi
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: colorScheme.primary), // Kenarlık rengi
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          colorScheme.primary), // Odaklandığında kenarlık rengi
                ),
                prefixIcon: Icon(Icons.search,
                    color: colorScheme.onSurface), // İkon rengi
              ),
              style: TextStyle(color: colorScheme.onSurface), // Metin rengi
            ),
            SizedBox(height: 10),
            // Filtrelenmiş Öğeler Listesi
            Expanded(
              child: ListView.builder(
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: EdgeInsets.symmetric(vertical: 4),
                    color: colorScheme.surfaceVariant, // Kart arka plan rengi
                    child: ListTile(
                      title: Text(
                        _filteredItems[index],
                        style: TextStyle(
                            color: colorScheme.onSurface), // Metin rengi
                      ),
                      onTap: () {
                        // Öğeye tıklandığında yapılacak işlemler
                        // Örneğin, detay sayfasına yönlendirme yapılabilir
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
