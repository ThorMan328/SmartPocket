import 'package:flutter/material.dart';
import 'package:smart_pocket/src/pages/modulos/modulo4/modulo_4_decisiones_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo4/modulo_4_deudas_page.dart';

class Modulo4Page extends StatefulWidget {
  @override
  _Modulo4PageState createState() => _Modulo4PageState();
}

class _Modulo4PageState extends State<Modulo4Page> {

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
        Modulo4Deudas(),
        Modulo4Decisiones(),
      ],
    );
  }
}