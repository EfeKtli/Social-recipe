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
    final colorScheme = Theme.of(context).colorScheme; // colorScheme tanımlandı

    return Scaffold(
      backgroundColor: colorScheme.surface, // Arka plan rengi düzeltildi
      appBar: AppBar(
        title: Text('Arama'),
        backgroundColor: colorScheme.primary, // AppBar arka plan rengi
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                _filterItems(value);
              },
              decoration: InputDecoration(
                labelText: 'Ara',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredItems[index]),
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
