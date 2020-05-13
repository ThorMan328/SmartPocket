import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_pocket/src/pages/cartera/cuenta_page.dart';
import 'package:smart_pocket/src/pages/cartera/gastos/gastos_page.dart';
import 'package:smart_pocket/src/pages/cartera/grafico_page.dart';
import 'package:smart_pocket/src/pages/cartera/registros_page.dart';

class PrincipalCartera extends StatefulWidget {
  @override
  _PrincipalCarteraState createState() => _PrincipalCarteraState();
}

class _PrincipalCarteraState extends State<PrincipalCartera> {

var _color = Colors.white;

int _pagina = 0;

final _paginaSeleccionada = [
  CuentaPage(),
  GastosPage(),
  RegistrosPage(),
  GraficosPage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        //buttonBackgroundColor: Color.fromRGBO(130, 222, 126 , 1),
        backgroundColor: Colors.white,
        color: Color.fromRGBO(255, 82, 1 , 1.0),
        animationDuration: const Duration(milliseconds: 300),
        
        index: _pagina,
        height: 50,
        onTap: (int index){
          setState(() {
            _pagina = index;
          });
        },
        items: [
          Icon(FontAwesomeIcons.wallet, color: _color,),
          Icon(FontAwesomeIcons.handHoldingUsd, color: _color),
          Icon(FontAwesomeIcons.businessTime, color: _color),
          Icon(Icons.assessment, color: _color),
        ]
      ),
      body: _paginaSeleccionada[_pagina]
    );
  }
}