import 'package:flutter/material.dart';
import 'package:smart_pocket/src/pages/modulos/modulo5/modulo_5_intereses_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo5/modulo_5_productos_financieros_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo5/modulo_5_sistema_financiero_page.dart';

class Modulo5Page extends StatefulWidget {
  @override
  _Modulo5PageState createState() => _Modulo5PageState();
}

class _Modulo5PageState extends State<Modulo5Page> {

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
        Modulo5SistemaFinanciero(),
        Modulo5ProductosFinancieros(),
        Modulo5Intereses(),
      ],
    );
  }
}