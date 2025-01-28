import 'package:flutter/material.dart';
import 'home_screen.dart'; // HomeScreen dosyasını ekleyin
import 'register_screen.dart'; // RegisterScreen dosyasını ekleyin

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme; // Tema renklerini çek

    return Scaffold(
      backgroundColor: colorScheme.surface, // Arka plan rengi
      appBar: AppBar(
        title: Text('Giriş Yap'),
        backgroundColor: colorScheme.primary, // AppBar arka plan rengi
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // "Nefis Yemek Tarifleri için Giriş Yap" yazısı
            Text(
              'Nefis Yemek Tarifleri için Giriş Yap',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface, // Metin rengi
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40), // Yazı ile form arasına boşluk
            // Kullanıcı Adı Alanı
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı',
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
              ),
              style: TextStyle(color: colorScheme.onSurface), // Metin rengi
            ),
            SizedBox(height: 20),
            // Şifre Alanı
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Şifre',
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
              ),
              obscureText: true,
              style: TextStyle(color: colorScheme.onSurface), // Metin rengi
            ),
            SizedBox(height: 20),
            // Giriş Yap Butonu
            ElevatedButton(
              onPressed: () {
                String username = _usernameController.text;
                String password = _passwordController.text;

                if (username.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Kullanıcı adını girmediniz.'),
                      backgroundColor: colorScheme.error,
                    ),
                  );
                } else if (password.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Şifreyi girmediniz.'),
                      backgroundColor: colorScheme.error,
                    ),
                  );
                } else if (password.length < 8) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Şifreniz 8 karakterden az.'),
                      backgroundColor: colorScheme.error,
                    ),
                  );
                } else {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                    (Route<dynamic> route) => false,
                  );
                }
              },
              child: Text('Giriş Yap'),
              style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.primary, // Buton arka plan rengi
                foregroundColor: colorScheme.onPrimary, // Buton metin rengi
              ),
            ),
            SizedBox(height: 20),
            // Kayıt Ol Butonu
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text(
                'Kayıt Ol',
                style: TextStyle(
                  color: colorScheme.primary, // Metin rengi
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
