import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(50),
              child: CircleAvatar(
                child: Icon(Icons.person),
              )
            ),
            ListTile(
              title: Text('Mi cuenta'),
            ),
            Divider(),
            ListTile(
              title: Text('Instrucciones de uso'),
            ),
            Divider(),
            ListTile(
              title: Text('Acerca de'),
            ),
            Divider(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  title: Text('Cerrar Sesión'),
                  leading: Icon(Icons.power_settings_new),
                ),
              ),
            ),
          ],
        ),
    );
  }
}