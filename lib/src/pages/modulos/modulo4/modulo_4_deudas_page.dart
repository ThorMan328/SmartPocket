import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo4Deudas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                titulo('Manejo de las deudas'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_4_finanzas_page_images/1.png'),
                SizedBox(height: 10,),
                texto('Una deuda es un compromiso u obligación que se contrae en relación con alguien o algo con el fin de restituir una situación.'),
                SizedBox(height: 10,),
                subtitulo('¿Por qué las personas se endeudan?'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_4_finanzas_page_images/2.png'),
                SizedBox(height: 10,),
                texto('Porque no se cuenta con el dinero en ese mismo momento o porque los ingresos no son suficientes para cubrir los gastos. Una persona en ocasiones no es consciente de lo que significa una deuda y de las consecuencias que ello puede traer no sólo para sus finanzas, sino para su vida, en general.'),
                SizedBox(height: 10,),
                subtitulo('¡El crédito es una deuda!'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_4_finanzas_page_images/3.png'),
                SizedBox(height: 10,),
                subtitulo('Crédito formal'),
                SizedBox(height: 5,),
                texto('Es aquel otorgado por las entidades vigiladas por la Superintendencia Financiera de Colombia o la Superintendencia de Economía Solidaria.Tomar un crédito con una entidad formal, permite acceder a otros productos distintos a créditos y crear un historial financiero, el cual podrá servirte como carta de presentación al solicitar nuevos créditos.'),
                SizedBox(height: 10,),
                subtitulo('Crédito informal'),
                SizedBox(height: 5,),
                texto('Las entidades informales ofrecen crédito sin codeudor, lo que resulta atractivo para muchos. Además cobran altas tasas de interés que pueden llegar hasta el 10% mensual (modalidad conocida como gota a gota) que pueden terminar afectado gravemente al deudor.'),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child:  Align(
                    alignment: Alignment.bottomRight,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(child: SizedBox()),
                        Text('Deslice para continuar', style: GoogleFonts.walterTurncoat(fontSize: 15.0),),
                        SizedBox(width: 15,),
                        Icon(FontAwesomeIcons.arrowRight)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}