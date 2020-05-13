import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo3Metas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                titulo('Metas'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_3_finanzas_page_images/1.png'),
                SizedBox(height: 10,),
                subtitulo('Importancia de las metas'),
                SizedBox(height: 5,),
                texto('Alcanzar metas conlleva un esfuerzo y trabajo,lo más importante es ser constante, escuchar y estar dispuesto a aprender.'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_3_finanzas_page_images/2.png'),
                SizedBox(height: 10,),
                subtitulo('¡Clases de metas!'),
                SizedBox(height: 5,),
                richText('Metas mejorables: ', 'Los objetivos siempre deben estar destinados a mejorar algún aspecto de la vida.', context),
                SizedBox(height: 5,),
                richText('Metas específicas: ', 'Fijar los propósitos que se quieren alcanzar; definir cómo se van a alcanzar y establecer el periodo de tiempo en que se van a materializar.', context),
                SizedBox(height: 5,),
                richText('Metas tangibles: ', 'Se refiere a aquellas que puedan tener un impacto inmediato en nuestras vidas.', context),
                SizedBox(height: 5,),
                richText('Metas alcanzables: ', 'Hay que ser realista, y definir lo que se quiere alcanzar y en cuanto tiempo se espera conseguir.', context),
                SizedBox(height: 5,),
                richText('Metas superables: ', 'Cuando se fijan nuevas metas, no se deben descuidar las obligaciones con las que ya contaba.', context),
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
      ),
    );
  }
}