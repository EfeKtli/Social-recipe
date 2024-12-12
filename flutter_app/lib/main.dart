import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //Merhabalar keyvan hocam ders kayıtlarınızı izlerken başka şeyler için yeni dart dosyaları açmamızı söylemiştiniz(Örnek ana ekran için ayrı çekirdek için ayrı gibi gibi) ama en azından burada ihtiyaç duymadım
  Widget build(BuildContext context) {
    //uygulamayı geliştirirken emülatör kurulumu olsun flutter kurulumu olsun biraz sizden biraz chatgpt den biraz internetten birazda kendim yapmaya çalışarak böyle bir şey yaptım
    return MaterialApp(
      //ilk haftanın kayıtlarına ulaşamadığım için temelden öğrenmek zor oldu ama böyle bir şey yaptım umarım beğenmişsinizdir
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color(0xFFFFFDD0),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Enfes Yemek Tarifleri'),
          actions: [Icon(Icons.notifications)],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Menü',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Ev'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text('Kategoriler'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Kaydedilenler'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.thumb_up_alt_outlined),
                title: Text('Beğenilenler'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const Text(
                "Kategori:",
                style: TextStyle(fontSize: 18),
              ),
              const Text(
                "Fit Yemek Kategorisi",
                style: TextStyle(fontSize: 16),
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
                          leading: Icon(Icons.restaurant),
                          title: Text("Keyvan Aratesh:"),
                          subtitle: Text(
                              "Bu kadar kod yazarken ve bu kadar öğrenciye ders verirken nasıl fit kaldığımı sanıyorsunuz? Tabiki kendi başıma keşfettiğim nefis ton balıklı salata tarifimle. Bu konuda çok iddialıyım şimdiden afiyet olsun :)"),
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
                                color: Colors.brown),
                            SizedBox(width: 10),
                            Icon(Icons.share, color: Colors.brown),
                          ],
                        ),
                        Divider(
                          color: Colors.brown,
                          thickness: 1,
                          height: 30,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(Icons.local_pizza),
                          title: Text("Fitadam35:"),
                          subtitle: Text(
                              "Bu gün sizlerle beraber düşük kalorili pizza yapacağız"),
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
                                color: Colors.brown),
                            SizedBox(width: 10),
                            Icon(Icons.share, color: Colors.brown),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 30,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(Icons.cake),
                          title: Text("Sevim Üzerli:"),
                          subtitle: Text(
                              "Sizlere en sevdiğim fit kek tarifini paylaşıyorum :)"),
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
                                color: Colors.brown),
                            SizedBox(width: 10),
                            Icon(Icons.share, color: Colors.brown),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Body'nin altına eklenen not
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Not: Merhaba keyvan hocam bu uygulamayı yaparken birhayli zorlandım. Ama bir şeyler oldu neyseki. Bu uygulamada resmin üstüne tıklandığı zaman kullanıcının verdiği yemek taarifi gösterilecek. Ama o kadar flutter bilgim yok maalesef final ödevine yapacağım sanırım onu :D',
                  style: TextStyle(fontSize: 16, color: Colors.brown),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 65,
          color: Colors.orange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.person),
              Icon(Icons.search),
              Icon(Icons.settings),
            ],
          ),
        ),
      ),
    );
  }
}
