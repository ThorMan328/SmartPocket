
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smart_pocket/src/widgets/graph_widget.dart';


class MesWidget extends StatefulWidget {

  final List<DocumentSnapshot> documents;
  final double total;
  final List<double> xdia;
  final Map<String, double> categorias;

  MesWidget({Key key, this.documents}) 
  : 
    total = documents.map((doc) => doc['valor'])
    .fold(0.0, (a,b)=> a + b),
    xdia = List.generate(30, (int index) {
      return documents.where((doc) => doc['dia'] == (index + 1))
      .map((doc) => doc['valor'])
      .fold(0.0, (a,b)=> a + b);
    }),
    categorias = documents.fold({}, (map, document){
      if (!map.containsKey(document['categoria'])){
        map[document['categoria']] = 0.0;
      }
      map[document['categoria']] += document['valor'];
      return map; 
    }),
    super(key: key); 
    
  @override
  _MesWidgetState createState() => _MesWidgetState();
}

class _MesWidgetState extends State<MesWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          _totalGastos(),
          _grafico(),
          Container(
          color: Colors.blueAccent.withOpacity(0.5),
          height: 5,
          ),
          _listaDeGastos(context)
        ],
      ),
    );
  }

 Widget _totalGastos(){
  return Column(
    children: <Widget>[
      Text('\$${widget.total.toStringAsFixed(2)}', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),),
      Text('Total gastos del mes', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
     ],
   );
 }

 Widget _grafico(){
   return Container(
     padding: EdgeInsets.symmetric(horizontal: 10.0),
     height: 200,
     child: GraphWidget(
       data: widget.xdia
       ),
   );
 }

Widget  _listaDeGastos(BuildContext context) {
  return Expanded(
      child: ListView.separated(
        itemCount: widget.categorias.keys.length,
        itemBuilder: (BuildContext context, int index) {
          var key  = widget.categorias.keys.elementAt(index);
          var data = widget.categorias[key];
          var id   = widget.documents[index].documentID;
          return _item(Icons.account_balance_wallet, id , 100 * data ~/ widget.total, data);
        },
        separatorBuilder: (BuildContext context, int index ) => 
        Container(
          color: Colors.blueAccent.withOpacity(0.5),
          height: 5,
        ),
      ),
  );
 }


 Widget _item(IconData icono, String nombre, int porcentaje, double valor) {
    final estiloTextoGastos = TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
    return ListTile(
      leading: Icon(icono, size: 35,),
      title: Text(nombre, style: estiloTextoGastos,),
      subtitle: Text('$porcentaje % de gastos'),
      trailing: Text('\$$valor', style: estiloTextoGastos,),
    );
  }

}