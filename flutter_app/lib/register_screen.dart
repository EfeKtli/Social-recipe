import 'package:flutter/material.dart';
import 'home_screen.dart'; // HomeScreen dosyasını ekleyin

class RegisterScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme; // Tema renklerini çek

    return Scaffold(
      backgroundColor: colorScheme.surface, // Arka plan rengi
      appBar: AppBar(
        title: Text('Kayıt Ol'),
        backgroundColor: colorScheme.primary, // AppBar arka plan rengi
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            // Şifreyi Doğrula Alanı
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Şifreyi Doğrula',
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
            // Kayıt Ol Butonu
            ElevatedButton(
              onPressed: () {
                String username = _usernameController.text;
                String password = _passwordController.text;
                String confirmPassword = _confirmPasswordController.text;

                if (username.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Kullanıcı adını girmediniz.'),
                      backgroundColor: colorScheme.error, // Hata rengi
                    ),
                  );
                } else if (password.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Şifreyi girmediniz.'),
                      backgroundColor: colorScheme.error, // Hata rengi
                    ),
                  );
                } else if (confirmPassword.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Şifreyi doğrulamadınız.'),
                      backgroundColor: colorScheme.error, // Hata rengi
                    ),
                  );
                } else if (password != confirmPassword) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Şifreler aynı değil.'),
                      backgroundColor: colorScheme.error, // Hata rengi
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
              child: Text('Kayıt Ol'),
              style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.primary, // Buton arka plan rengi
                foregroundColor: colorScheme.onPrimary, // Buton metin rengi
              ),
            ),
          ],
        ),
      ),
    );
  }
}
