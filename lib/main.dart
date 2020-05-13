import 'package:flutter/material.dart';
import 'package:smart_pocket/src/bloc/provider.dart';
import 'package:smart_pocket/src/pages/cartera/gastos/gastos_por_categoria.dart';

import 'package:smart_pocket/src/pages/modulos/modulo1/modulo_1_principal_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo2/modulo_2_principal_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo3/modulo_3_principal_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo4/modulo_4_principal_page.dart';
import 'package:smart_pocket/src/pages/modulos/modulo5/modulo_5_principal_page.dart';

import 'package:smart_pocket/src/pages/principal_cartera_page.dart';
import 'package:smart_pocket/src/pages/principal_finanzas_page.dart';
import 'package:smart_pocket/src/pages/principal_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {

          //rutas principal_page
          'home'    : (BuildContext context) => PrincipalPage(),
          'principalFinanzas'    : (BuildContext context) => PrincipalFinanzas(),
          'principalCartera' : (BuildContext context) => PrincipalCartera(),

          //rutas principal_finanzas_page
          'modulo1' : (BuildContext context) => Modulo1Page(),
          'modulo2' : (BuildContext context) => Modulo2Page(),
          'modulo3' : (BuildContext context) => Modulo3Page(),
          'modulo4' : (BuildContext context) => Modulo4Page(),
          'modulo5' : (BuildContext context) => Modulo5Page(),

          //rutas gastos page
          'gastosPorCategoria' : (BuildContext context) => GastosPorCategoria(),
        },
      ),
    );
  }
}

