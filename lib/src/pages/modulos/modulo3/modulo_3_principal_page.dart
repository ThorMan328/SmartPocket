import 'package:flutter/material.dart';
import 'package:smart_pocket/src/pages/modulos/modulo3/modulo_3_ahorro_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo3/modulo_3_inversion_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo3/modulo_3_metas_page.dart';




class Modulo3Page extends StatefulWidget {
  @override
  _Modulo3PageState createState() => _Modulo3PageState();
}

class _Modulo3PageState extends State<Modulo3Page> {

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
        Modulo3Metas(),
        Modulo3Ahorro(),
        Modulo3Inversion(),
      ],
    );
  }
}