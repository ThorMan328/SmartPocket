import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:smart_pocket/src/widgets/drawer_finanzas.dart';
import 'package:smart_pocket/src/widgets/fondo_app.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smart_pocket/src/widgets/mes_widget.dart';

class GraficosPage extends StatefulWidget {
  @override
  _GraficosPageState createState() => _GraficosPageState();
}

class _GraficosPageState extends State<GraficosPage> {

  PageController _controller;
  int _currentPage = 9;
  Stream<QuerySnapshot> _query;

  @override
  void initState() {

    _query = Firestore.instance
    .collection('gastos')
    .where("mes", isEqualTo: _currentPage +1)
    .snapshots();

    super.initState();
    _controller = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.4
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 82, 1 , 1.0),
        title: Text('Resumen'),
      ),
      drawer: DrawerMenu(),
      body: Stack(
        children: <Widget>[
          FondoApp(),
          SafeArea(
            child: Column(
              children: <Widget>[
                _selectorMes(),
                StreamBuilder<QuerySnapshot>(
                  stream: _query,
                  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                    if (snapshot.hasData) {
                      return MesWidget(
                        documents: snapshot.data.documents
                        );
                    }else{
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ],
            ),
          )
        ],
      )
    );
  }

 Widget _setMes(String nombre, int posicion){

   var _alignement;

   final selectedItem   = TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20.0);
   final unSelectedItem = TextStyle(fontWeight: FontWeight.normal, color: Colors.black38.withOpacity(0.4), fontSize: 20.0);

   if(posicion == _currentPage){
     _alignement = Alignment.center;
   }else if (posicion > _currentPage){
     _alignement = Alignment.centerRight;
   }else{
     _alignement = Alignment.centerLeft;
   }

   return Align(
    alignment: _alignement,
    child: Text(nombre, style: posicion == _currentPage ? selectedItem : unSelectedItem,)
    );
 }

 Widget _selectorMes() {
   return Container(
     padding: EdgeInsets.all(10.0),
     height: 50,
     child: PageView(
       onPageChanged: (newPage){
         setState(() {
           _currentPage = newPage;
           _query = Firestore.instance
            .collection('gastos')
            .where("mes", isEqualTo: _currentPage +1)
            .snapshots();
         });
       },
       controller: _controller,
       children: <Widget>[
         _setMes('Enero', 0),
         _setMes('Febrero', 1),
         _setMes('Marzo', 2),
         _setMes('Abril', 3),
         _setMes('Mayo', 4),
         _setMes('Junio', 5),
         _setMes('Julio', 6),
         _setMes('Agosto', 7),
         _setMes('Septiembre', 8),
         _setMes('Octubre', 9),
         _setMes('Noviembre', 10),
         _setMes('Diciembre', 11), 
       ],
     ),
   );
 }

}