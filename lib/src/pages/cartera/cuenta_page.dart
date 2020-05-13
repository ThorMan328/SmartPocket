import 'package:flutter/material.dart';
import 'package:smart_pocket/src/pages/principal_cartera_page.dart';
import 'package:smart_pocket/src/widgets/drawer_finanzas.dart';
import 'package:smart_pocket/src/widgets/fondo_app.dart';

class CuentaPage extends StatefulWidget {
  CuentaPage({Key key}) : super(key: key);

  @override
  _CuentaPageState createState() => _CuentaPageState();
}

class _CuentaPageState extends State<CuentaPage> {
  
  final tituloPagina = new PrincipalCartera();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 82, 1 , 1.0),
        title: Text('Cuenta'),
      ),
      drawer: DrawerMenu(),
      body: Stack(
        children: <Widget>[
          FondoApp(),
          Column(
            children: <Widget>[
              Text('CuentaPage')
            ],
          )
        ],
      )
    );
  }
}