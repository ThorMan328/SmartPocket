import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';


class Modulo1DineroPage extends StatelessWidget {
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
                  titulo('Contextualización Financiera'),
                  SizedBox(height: 15.0,),
                  texto('¡Bienvenido!'),
                  texto('El objetivo de este módulo consiste en iniciar al aprendiz en los aspectos básicos de las finanzas.'),
                  subtitulo('Antes del dinero: El trueque'),
                  SizedBox(height: 10.0,),
                  imagen('assets/images/modulo_1_finanzas_page_images/1.png'),
                  SizedBox(height: 10.0,),
                  texto('El trueque es el intercambio de un objeto o servicio por otro bien o servicio.'),
                  SizedBox(height: 10,),
                  subtitulo('Dinero'),
                  SizedBox(height: 10,),
                  texto('El dinero es todo activo o bien generalmente aceptado como medio de pago por los agentes económicos para sus intercambios'),
                  SizedBox(height: 10,),
                  subtitulo('Funciones del dinero'),
                  SizedBox(height: 10,),
                  richText('Medio de cambio,', ' porque se puede intercambiar por otros bienes y servicios.', context),
                  SizedBox(height: 5,),
                  richText('Unidad de cuenta,', ' porque podemos determinar el valor de cualquier bien en función de una cantidad de dinero.', context),
                  SizedBox(height: 5),
                  richText('Depósito de valor', ' debido a que podemos ahorrar dinero para conservar riqueza.', context),
                  SizedBox(height: 10,),
                  subtitulo('Tipos de dinero'),
                  SizedBox(height: 10,),
                  richText('Dinero signo:', ' corresponde a las monedas y billetes tradicionales, los cuales pueden ser usados para comprar y vender en el ámbito comercial.', context),
                  SizedBox(height: 5,),
                  imagen('assets/images/modulo_1_finanzas_page_images/2.png'),
                  SizedBox(height: 5,),
                  richText('Dinero mercancía:', ' consiste en objetos que tienen valor por sí mismos, además del valor de cambio cuando se utiliza como moneda.', context),
                  SizedBox(height: 5,),
                  imagen('assets/images/modulo_1_finanzas_page_images/3.png'),
                  SizedBox(height: 5,),
                  richText('Moneda de curso legal:', ' llamada moneda corriente es la forma de pago, definida por la ley de un Estado.', context),
                  SizedBox(height: 5,),
                  imagen('assets/images/modulo_1_finanzas_page_images/4.png'),
                  SizedBox(height: 5,),
                  richText('Dinero bancario:', ' ese es el que se utiliza internamente para transacciones bancarias.', context),
                  SizedBox(height: 5,),
                  imagen('assets/images/modulo_1_finanzas_page_images/5.png'),
                  SizedBox(height: 5,),
                  richText('Dinero electrónico:', ' es un valor o medio de pago que se almacena en un soporte electrónico. ', context),
                  SizedBox(height: 5,),
                  imagen('assets/images/modulo_1_finanzas_page_images/6.png'),
                  SizedBox(height: 5,),
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
                  Expanded(child: SizedBox()),
                  Text('Deslice para continuar', style: GoogleFonts.walterTurncoat(fontSize: 15.0),),
                  SizedBox(width: 15,),
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