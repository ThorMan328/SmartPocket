import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo3Ahorro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: SafeArea(
              child: Column(
                children: <Widget>[
                  titulo('Ahorro'),
                  SizedBox(height: 10,),
                  imagen('assets/images/modulo_3_finanzas_page_images/3.png'),
                  SizedBox(height: 10,),
                  texto('El ahorro es la práctica de separar una porción de los ingresos mensuales, con el fin de acumularlo a lo largo del tiempo y destinarlo luego a otros fines. '),
                  SizedBox(height: 10,),
                  subtitulo('Tipos de ahorro en función del objetivo'),
                  SizedBox(height: 10,),
                  richText('Ahorro de emergencias: ', 'Es aquella parte de nuestros ahorros que dedicaremos en caso de emergencia. A priori, debe ser un dinero con el que no deberíamos contar.', context),
                  SizedBox(height: 5,),
                  richText('Ahorro para los hijos: ', 'Este ahorro puede ser tanto antes de tener un hijo (dinero necesario para su infancia) o durante su crecimiento (para sus estudios).', context),
                  SizedBox(height: 5,),
                  richText('Ahorro con objetivo definido: ', 'En función del objetivo concreto que tengamos, es recomendable ahorrar una parte de nuestro dinero antes de adentrarnos en la compra de bienes como una casa o un coche.', context),                  
                ],
              ),
             ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child:  Align(
                  alignment: Alignment.bottomRight,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.arrowLeft),
                      Expanded(child: SizedBox(),),
                      Icon(FontAwesomeIcons.arrowRight)
                    ],
                  ),
                ),
              ),
            ),
          ] 
        ),
    );
  }
}