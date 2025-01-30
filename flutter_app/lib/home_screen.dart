import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'drawer_widget.dart';

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
          style: GoogleFonts.lobster(
              color: colorScheme
                  .onPrimary), // Google Fonts kullanarak başlık rengi
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
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: colorScheme
                      .onSurface), // Google Fonts kullanarak metin rengi
            ),
            Text(
              "Fit Yemek Kategorisi",
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: colorScheme
                      .onSurface), // Google Fonts kullanarak metin rengi
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
                            style: GoogleFonts.roboto(
                                color: colorScheme
                                    .onSurface)), // Google Fonts kullanarak metin rengi
                        subtitle: Text(
                          "Bu kadar kod yazarken ve bu kadar öğrenciye ders verirken nasıl fit kaldığımı sanıyorsunuz? Tabii ki kendi başıma keşfettiğim nefis ton balıklı salata tarifimle. Bu konuda çok iddialıyım şimdiden afiyet olsun :)",
                          style: GoogleFonts.roboto(
                              color: colorScheme.onSurface.withOpacity(
                                  0.8)), // Google Fonts kullanarak metin rengi
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
                            style: GoogleFonts.roboto(
                                color: colorScheme
                                    .onSurface)), // Google Fonts kullanarak metin rengi
                        subtitle: Text(
                          "Bu gün sizlerle beraber düşük kalorili pizza yapacağız",
                          style: GoogleFonts.roboto(
                              color: colorScheme.onSurface.withOpacity(
                                  0.8)), // Google Fonts kullanarak metin rengi
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
                            style: GoogleFonts.roboto(
                                color: colorScheme
                                    .onSurface)), // Google Fonts kullanarak metin rengi
                        subtitle: Text(
                          "Sizlere en sevdiğim fit kek tarifini paylaşıyorum :)",
                          style: GoogleFonts.roboto(
                              color: colorScheme.onSurface.withOpacity(
                                  0.8)), // Google Fonts kullanarak metin rengi
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
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: colorScheme
                        .secondary), // Google Fonts kullanarak metin rengi
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
                context.push('/login');
              },
              child: Icon(Icons.person,
                  color: colorScheme.onPrimary), // İkon rengi
            ),
            GestureDetector(
              onTap: () {
                context.push('/search');
              },
              child: Icon(Icons.search,
                  color: colorScheme.onPrimary), // İkon rengi
            ),
            GestureDetector(
              onTap: () {
                context.push('/settings');
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
