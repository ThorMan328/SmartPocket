import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_pocket/src/widgets/crear_boton_redondeado.dart';
import 'package:smart_pocket/src/widgets/drawer_finanzas.dart';
import 'package:smart_pocket/src/widgets/fondo_app.dart';


class PrincipalFinanzas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 82, 1 , 1.0),
        centerTitle: true,
        title: Text('ACADEMIA',style: GoogleFonts.walterTurncoat(),),
      ),
      drawer: DrawerMenu(),
      body: Stack(
        children: <Widget>[
          FondoApp(),
          SingleChildScrollView(
            child: Table(
            children: [
              TableRow(
                children: [
                  crearBotonRedondeado(context, 'assets/images/finanzas_principal_page_images/1.png', 'Contextualización Financiera', ()=> Navigator.pushNamed(context, 'modulo1')),
                  crearBotonRedondeado(context, 'assets/images/finanzas_principal_page_images/2.png', 'Presupuesto', ()=> Navigator.pushNamed(context, 'modulo2'))
                ]
              ),
              TableRow(
                children: [
                  crearBotonRedondeado(context, 'assets/images/finanzas_principal_page_images/3.png', 'Ahorro e inversión', ()=> Navigator.pushNamed(context, 'modulo3')),
                  crearBotonRedondeado(context, 'assets/images/finanzas_principal_page_images/4.png', 'Manejo de las deudas', ()=> Navigator.pushNamed(context, 'modulo4')),
                ]
              ),
              TableRow(
                children: [
                  crearBotonRedondeado(context, 'assets/images/finanzas_principal_page_images/5.png', 'Sistema financiero', ()=> Navigator.pushNamed(context, 'modulo5')),
                  crearBotonRedondeado(context, 'assets/images/finanzas_principal_page_images/6.png', 'Evalúa tus conocimientos', ()=> Navigator.pushNamed(context, 'modulo1'))
                ]
              ),
              ] 
            ),
          )  
        ],
      )
    );
  }

}