import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo1FinanzasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  titulo('Finanzas'),
                  subtitulo('¿Qué son las finanzas?'),
                  texto('​Estudia las formas en que los individuos asignan recursos a través del tiempo y toman decisiones en presencia de incertidumbre y riesgo.'),
                  SizedBox(height: 10,),
                  subtitulo('Finanzas personales, importantes para mi vida'),
                  SizedBox(height: 5,),
                  imagen('assets/images/modulo_1_finanzas_page_images/7.png'),
                  SizedBox(height: 5,),
                  texto('Se ocupan de cómo los individuos o familias administran sus recursos a lo largo de su vida. incluyendo ingresos, gastos y herramientas financieras para optimizar el manejo de sus bienes.'),
                  SizedBox(height: 10,),   
                  subtitulo('Objetivos de las finanzas personales'),
                  SizedBox(height: 5.0,),
                  texto('planeación financiera: Permite lograr metas alcanzables en un entorno financiero, económico y social, a la vez de comprender diversas variables que afectan la toma de decisiones financieras.'),
                  SizedBox(height: 10,),
                  subtitulo('Hábitos financieros'),
                  SizedBox(height: 5,),
                  imagen('assets/images/modulo_1_finanzas_page_images/8.png'),
                  SizedBox(height: 10,),
                  richText('Presupuestar: ', ' Llevar una relación clara de cuánto dinero entra y cuánto sale.', context),
                  SizedBox(height: 5,),
                  richText('Ahorrar:', ' Guarde una parte de sus ingresos para el futuro.', context),
                  SizedBox(height: 5,),
                  richText('Salir de deudas', ' Siempre que tenga un ingreso extra priorice el pago de sus obligaciones', context),
                  SizedBox(height: 5,),
                  richText('Planificar: ', 'Identificar ingresos y gastos que se aproximan.', context),
                  SizedBox(height: 5,),
                  richText('Proteger: ', 'Adquirir un seguro para momentos de dificultad.', context)
                ],
              ),
            )
          ),
          Container(
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
          )
        ],
      )
    );
  }
}