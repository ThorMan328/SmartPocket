import 'package:flutter/material.dart';

import 'package:smart_pocket/src/widgets/drawer_finanzas.dart';
import 'package:smart_pocket/src/widgets/fondo_app.dart';

class RegistrosPage extends StatefulWidget {
  @override
  _RegistrosPageState createState() => _RegistrosPageState();
}

class _RegistrosPageState extends State<RegistrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 82, 1 , 1.0),
        title: Text('Histórico'),
      ),
      drawer: DrawerMenu(),
      body: Stack(
        children: <Widget>[
          FondoApp(),
          Column(
            children: <Widget>[
              Text('RegistrosPage')
            ],
          )
        ],
      )
    );
  }
}