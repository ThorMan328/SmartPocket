import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo1EstadosPage extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  titulo('Estados'),
                  texto('Permite determinar la situación económica en la cual se encuentra el individuo en un tiempo determinado'),
                  imagen('assets/images/modulo_1_finanzas_page_images/9.png'),
                  SizedBox(height: 10,),
                  richText('Ganancia: ', 'Es un resultado positivo que se ha obtenido durante un período, cuando los ingresos han sido  superiores a los Gastos.', context),
                  SizedBox(height: 5,),
                  richText('Pérdida:', 'Es el resultado negativo que se ha producido durante un período cuando los ingresos han sido menores que los gastos.', context),
                ],
              )
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Icon(FontAwesomeIcons.arrowLeft)
              ),
            ),
          ),
        ],
      )
    );
  }
}