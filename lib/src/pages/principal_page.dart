import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_pocket/src/widgets/crear_boton_redondeado.dart';
import 'package:smart_pocket/src/widgets/fondo_app.dart';



class PrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FondoApp(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('¡BIENVENIDO!', style: GoogleFonts.walterTurncoat(fontSize: 45, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 133, 251, 1))),
              SizedBox(height: 80,),
              _botonesRedondeados(context),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      child: Image(image: AssetImage('assets/images/principal_page_images/unab.png') ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
 Widget _botonesRedondeados(BuildContext context) {
   return Center(
     child:  Table(
      children: [
        TableRow(
          children: [
            crearBotonRedondeado(context, 'assets/images/principal_page_images/cartera.png', 'CARTERA', ()=> Navigator.pushNamed(context, 'principalCartera')),
            crearBotonRedondeado(context, 'assets/images/principal_page_images/libro.png', 'ACADEMIA', ()=> Navigator.pushNamed(context, 'principalFinanzas')),
          ]
        ), 
      ]
    ),
   );
 }

}