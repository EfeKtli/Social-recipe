import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: colorScheme.primary,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Menü',
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Ev'),
            onTap: () {
              context.go('/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Kategoriler'),
            onTap: () {
              context.go('/categories');
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Kaydedilenler'),
            onTap: () {
              context.go('/saved_recipes');
            },
          ),
          ListTile(
            leading: Icon(Icons.thumb_up_alt_outlined),
            title: Text('Beğenilenler'),
            onTap: () {
              context.pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.receipt),
            title: Text('Tarifler'),
            onTap: () {
              context.go('/recipes');
            },
          ),
        ],
      ),
    );
  }
}
