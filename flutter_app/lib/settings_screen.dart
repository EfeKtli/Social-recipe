import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hesap Ayarları',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Kullanıcı Adı'),
              subtitle: Text('misafir27'),
              onTap: () {
                // Kullanıcı adı değiştirme işlemi
              },
            ),
            Divider(),
            Text(
              'Uygulama Ayarları',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text('Koyu Tema'),
              value: false, // Bu değer dinamik olarak değiştirilebilir
              onChanged: (bool value) {
                // Tema değiştirme işlemi
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Bildirimler'),
              subtitle: Text('Bildirim ayarlarınızı yönetin'),
              onTap: () {
                // Bildirim ayarlarına gitme işlemi
              },
            ),
            Divider(),
            Text(
              'Diğer',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Yardım ve Destek'),
              onTap: () {
                // Yardım ve destek sayfasına gitme işlemi
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Hakkında'),
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
