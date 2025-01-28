import 'package:flutter/material.dart';
import 'settings_screen.dart'; // SettingsScreen dosyasını ekleyin
import 'search_screen.dart'; // SearchScreen dosyasını ekleyin
import 'drawer_widget.dart'; // CustomDrawer dosyasını ekleyin
import 'login_screen.dart'; // LoginScreen dosyasını ekleyin

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface, // Tema rengini kullan
      appBar: AppBar(
        backgroundColor: colorScheme.primary, // AppBar arka plan rengi
        title: Text(
          'Enfes Yemek Tarifleri',
          style: TextStyle(color: colorScheme.onPrimary), // Başlık rengi
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications,
                color: colorScheme.onPrimary), // Bildirim ikonu rengi
            onPressed: () {},
          ),
        ],
      ),
      drawer: CustomDrawer(), // CustomDrawer'ı kullanıyoruz
      body: Center(
        child: Column(
          children: [
            Text(
              "Kategori:",
              style: TextStyle(
                  fontSize: 18, color: colorScheme.onSurface), // Metin rengi
            ),
            Text(
              "Fit Yemek Kategorisi",
              style: TextStyle(
                  fontSize: 16, color: colorScheme.onSurface), // Metin rengi
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(Icons.restaurant,
                            color: colorScheme.onSurface), // İkon rengi
                        title: Text("Keyvan Aratesh:",
                            style: TextStyle(
                                color: colorScheme.onSurface)), // Metin rengi
                        subtitle: Text(
                          "Bu kadar kod yazarken ve bu kadar öğrenciye ders verirken nasıl fit kaldığımı sanıyorsunuz? Tabiki kendi başıma keşfettiğim nefis ton balıklı salata tarifimle. Bu konuda çok iddialıyım şimdiden afiyet olsun :)",
                          style: TextStyle(
                              color: colorScheme.onSurface
                                  .withOpacity(0.8)), // Metin rengi
                        ),
                      ),
                      Center(
                        child: Image.network(
                          'https://cdn.yemek.com/mnresize/1250/833/uploads/2024/06/ton-balikli-peynirli-salata-yemekcom.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.thumb_up_alt_outlined,
                              color:
                                  colorScheme.secondary), // Beğenme ikonu rengi
                          SizedBox(width: 10),
                          Icon(Icons.share,
                              color: colorScheme
                                  .secondary), // Paylaşma ikonu rengi
                        ],
                      ),
                      Divider(
                        color: colorScheme.secondary, // Ayırıcı rengi
                        thickness: 1,
                        height: 30,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(Icons.local_pizza,
                            color: colorScheme.onSurface), // İkon rengi
                        title: Text("Fitadam35:",
                            style: TextStyle(
                                color: colorScheme.onSurface)), // Metin rengi
                        subtitle: Text(
                          "Bu gün sizlerle beraber düşük kalorili pizza yapacağız",
                          style: TextStyle(
                              color: colorScheme.onSurface
                                  .withOpacity(0.8)), // Metin rengi
                        ),
                      ),
                      Center(
                        child: Image.network(
                          'https://cdn.yemek.com/mnresize/1250/833/uploads/2021/10/fit-pizza-2-tarifi.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.thumb_up_alt_outlined,
                              color:
                                  colorScheme.secondary), // Beğenme ikonu rengi
                          SizedBox(width: 10),
                          Icon(Icons.share,
                              color: colorScheme
                                  .secondary), // Paylaşma ikonu rengi
                        ],
                      ),
                      Divider(
                        color: colorScheme.secondary, // Ayırıcı rengi
                        thickness: 1,
                        height: 30,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(Icons.cake,
                            color: colorScheme.onSurface), // İkon rengi
                        title: Text("Sevim Üzerli:",
                            style: TextStyle(
                                color: colorScheme.onSurface)), // Metin rengi
                        subtitle: Text(
                          "Sizlere en sevdiğim fit kek tarifini paylaşıyorum :)",
                          style: TextStyle(
                              color: colorScheme.onSurface
                                  .withOpacity(0.8)), // Metin rengi
                        ),
                      ),
                      Center(
                        child: Image.network(
                          'https://i.ytimg.com/vi/zJQV8Wl22Tk/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLD2s6wJAk9Fpy6JT8MzQUO5VJy1uA',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.thumb_up_alt_outlined,
                              color:
                                  colorScheme.secondary), // Beğenme ikonu rengi
                          SizedBox(width: 10),
                          Icon(Icons.share,
                              color: colorScheme
                                  .secondary), // Paylaşma ikonu rengi
                        ],
                      ),
                      Divider(
                        color: colorScheme.secondary, // Ayırıcı rengi
                        thickness: 1,
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Puan Vermeyi Unutmayınız :))',
                style: TextStyle(
                    fontSize: 16, color: colorScheme.secondary), // Metin rengi
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        color: colorScheme.primary, // BottomNavigationBar arka plan rengi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Icon(Icons.person,
                  color: colorScheme.onPrimary), // İkon rengi
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
              child: Icon(Icons.search,
                  color: colorScheme.onPrimary), // İkon rengi
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
              child: Icon(Icons.settings,
                  color: colorScheme.onPrimary), // İkon rengi
            ),
          ],
        ),
      ),
    );
  }
}
