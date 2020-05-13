import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_pocket/src/bloc/provider.dart';
import 'package:smart_pocket/src/widgets/drawer_finanzas.dart';
export 'package:smart_pocket/src/pages/cartera/gastos/gastos_page.dart';

class GastosPage extends StatefulWidget {
  GastosPage({Key key}) : super(key: key);

  @override
  _GastosPageState createState() => _GastosPageState();
}

class _GastosPageState extends State<GastosPage> {

  final controller = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 82, 1 , 1.0),
        title: Text('Gastos'),
      ),
      drawer: DrawerMenu(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(255, 82, 1 , 1.0),
        child: Icon(FontAwesomeIcons.folderPlus),
        onPressed: ()=> _nuevaCategoria(context, bloc),
      ),
      body: ListadoCategorias()
    );
  }

  Widget streamBuilder(CrearCategoriaBloc bloc) {
    return StreamBuilder(
      stream: bloc.idStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        WidgetsBinding.instance.addPostFrameCallback((_) => _nuevaCategoria(context, bloc));
      },
    );
  }

  Future _nuevaCategoria(BuildContext context, CrearCategoriaBloc bloc) async {
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Crear nueva categoría de gastos'),
          content: _formularioCrearCategoria(bloc),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  RaisedButton(
                  child: Text('Guardar'),
                  onPressed:  
                  (){
                    Firestore.instance.collection('gastos').document(controller.text).setData({'categoria' : 'empanadas', 'mes' : 1});
                    Navigator.pop(context);
                    controller.text = '';
                  },
                ),
              ],
            ),
          ]
        );
      }
    );
  }

  Widget _formularioCrearCategoria(CrearCategoriaBloc bloc) {
    return TextField(
      onChanged: bloc.cambiarId,
    );
  }
}

class ListadoCategorias extends StatefulWidget {
  @override
  _ListadoCategoriasState createState() => _ListadoCategoriasState();
}

class _ListadoCategoriasState extends State<ListadoCategorias> {

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('gastos').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError)
          return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting: return new Text('Cargando...');
          default:
            return new ListView(
              children: snapshot.data.documents.map((DocumentSnapshot document) {
                return Card(
                  elevation: 8.0,
                  child: new ListTile(
                    title: Center(child: new Text(document.documentID)),
                    onTap: (){},
                  ),
                );
              }).toList(),
            );
        }
      },
    );
  }

}