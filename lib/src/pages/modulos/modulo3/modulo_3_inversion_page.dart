import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo3Inversion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: <Widget>[
          SafeArea(
            child: Column(
            children: <Widget>[
              titulo('Inversión'),
              SizedBox(height: 10,),
              imagen('assets/images/modulo_3_finanzas_page_images/4.png'),
              SizedBox(height: 10,),
              texto('Es una forma de ahorro y de postergación del consumo, que consiste en cambiar los recursos adicionales disponibles por bienes cuyo valor no disminuya o incluso se incremente en el tiempo.'),
              SizedBox(height: 10,),
              subtitulo('¿Por qué invertir?'),
              SizedBox(height: 10,),
              richText('', 'Hace que su dinero comience a crecer de inmediato.', context),
              SizedBox(height: 5,),
              richText('', 'Potencia la capacidad de sus ahorros, acercándose a sus metas con más rapidez.', context),
              SizedBox(height: 5,),
              richText('', 'Permite que usted se beneficie del crecimiento económico en todo el mundo.', context),
              SizedBox(height: 5,),
              richText('', 'Le brinda tranquilidad al saber que está dando los pasos necesarios para lograr un futuro financiero más sólido.', context),
              SizedBox(height: 10,),
              subtitulo('¡En una inversión siempre hay riesgos!'),
              SizedBox(height: 10,),
              imagen('assets/images/modulo_3_finanzas_page_images/5.png'),
              SizedBox(height: 10,),
              richText('Riesgo de mercado: ', 'Está dado por las oscilaciones del valor de la inversión con motivo de las fluctuaciones internas del mercado', context),
              SizedBox(height: 5,),
              richText('Riesgo emisor: ', 'Si la sociedad o la entidad que ha emitido el título en el que se invierte no mantuviese las obligaciones contraídas, el inversor podría perder los intereses y también el capital que ha depositado.', context),
              SizedBox(height: 5,),
              richText('Riesgo de liquidez: ', 'Este riesgo está relacionado con la posibilidad de transformar la inversión en dinero sin una pérdida significativa del valor. ', context),              
              SizedBox(height: 5,),
              richText('Riesgo de cambio: ', 'Puede ocurrir cuando se invierte en títulos o en productos que tienen una divisa diferente a la del país en que se realizó la inversión.', context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Icon(FontAwesomeIcons.arrowLeft)
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}