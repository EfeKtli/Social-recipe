import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme; // Tema renklerini çek

    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
        backgroundColor: colorScheme.primary, // AppBar arka plan rengi
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hesap Ayarları
            Text(
              'Hesap Ayarları',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface, // Metin rengi
              ),
            ),
            ListTile(
              leading: Icon(Icons.person,
                  color: colorScheme.onSurface), // İkon rengi
              title: Text(
                'Kullanıcı Adı',
                style: TextStyle(color: colorScheme.onSurface), // Metin rengi
              ),
              subtitle: Text(
                'misafir27',
                style: TextStyle(
                    color: colorScheme.onSurface
                        .withOpacity(0.7)), // Alt metin rengi
              ),
              onTap: () {
                // Kullanıcı adı değiştirme işlemi
              },
            ),
            Divider(color: colorScheme.secondary), // Ayırıcı rengi
            // Uygulama Ayarları
            Text(
              'Uygulama Ayarları',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface, // Metin rengi
              ),
            ),
            SwitchListTile(
              title: Text(
                'Koyu Tema',
                style: TextStyle(color: colorScheme.onSurface), // Metin rengi
              ),
              value: false, // Bu değer dinamik olarak değiştirilebilir
              onChanged: (bool value) {
                // Tema değiştirme işlemi
              },
              activeColor: colorScheme.primary, // Switch aktif rengi
            ),
            ListTile(
              leading: Icon(Icons.notifications,
                  color: colorScheme.onSurface), // İkon rengi
              title: Text(
                'Bildirimler',
                style: TextStyle(color: colorScheme.onSurface), // Metin rengi
              ),
              subtitle: Text(
                'Bildirim ayarlarınızı yönetin',
                style: TextStyle(
                    color: colorScheme.onSurface
                        .withOpacity(0.7)), // Alt metin rengi
              ),
              onTap: () {
                // Bildirim ayarlarına gitme işlemi
              },
            ),
            Divider(color: colorScheme.secondary), // Ayırıcı rengi
            // Diğer
            Text(
              'Diğer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface, // Metin rengi
              ),
            ),
            ListTile(
              leading:
                  Icon(Icons.help, color: colorScheme.onSurface), // İkon rengi
              title: Text(
                'Yardım ve Destek',
                style: TextStyle(color: colorScheme.onSurface), // Metin rengi
              ),
              onTap: () {
                // Yardım ve destek sayfasına gitme işlemi
              },
            ),
            ListTile(
              leading:
                  Icon(Icons.info, color: colorScheme.onSurface), // İkon rengi
              title: Text(
                'Hakkında',
                style: TextStyle(color: colorScheme.onSurface), // Metin rengi
              ),
              onTap: () {
                // Hakkında sayfasına gitme işlemi
              },
            ),
          ],
        ),
      ),
    );
  }
}
