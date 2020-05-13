import 'package:flutter/material.dart';
import 'package:smart_pocket/src/pages/modulos/modulo1/modulo_1_dinero_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo1/modulo_1_estados_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo1/modulo_1_finanzas_page.dart';



class Modulo1Page extends StatefulWidget {
  @override
  _Modulo1PageState createState() => _Modulo1PageState();
}

class _Modulo1PageState extends State<Modulo1Page> {

  PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: _currentPage,
    );
  }


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      onPageChanged: (newPage){
        _currentPage = newPage;
      },
      children: <Widget>[
        Modulo1DineroPage(),
        Modulo1FinanzasPage(),
        Modulo1EstadosPage(),
      ],
    );
  }
}