import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo4Decisiones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                titulo('Toma de decisiones informadas'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_4_finanzas_page_images/4.png'),
                SizedBox(height: 10,),
                texto('El principal problema surge cuando no tenemos los conocimientos necesarios al momento de hacer uso de las herramientas financieras, especialmente si optamos por pedir préstamos para acceder a bienes de alto valor.'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_4_finanzas_page_images/5.png'),
                SizedBox(height: 10,),
                titulo('Tips para tomar la decisión acertada'),
                SizedBox(height: 10,),
                subtitulo('Saber diferenciar entre necesidades y deseos: '),
                SizedBox(height: 5,),
                texto('Las necesidades tienen mucho de subjetivo. No necesariamente son la carencia de algo, sino la “sensación de carencia” que puede ser completamente falsa.La tentación de comprar cosas que no son urgentes, y mucho menos necesarias, genera gastos inútiles que nos harán caer en errores financieros y, por sobre todo, endeudamientos.'),
                SizedBox(height: 10,),
                subtitulo('Pagar todo - o la mayoría -  de una sola vez:'),
                SizedBox(height: 5,),
                texto('La poca capacidad de las personas de poder ahorrar por querer comprar todo de inmediato a través de préstamos bancarios o créditos, es un error más común de lo que parece. Una de las ventajas que se pierde por no ser capaces de ahorrar para comprar lo que se quiere, es quedar endeudado por no pagar todo o la mayor cantidad del valor del bien o servicio de una vez.'),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(FontAwesomeIcons.arrowLeft)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}