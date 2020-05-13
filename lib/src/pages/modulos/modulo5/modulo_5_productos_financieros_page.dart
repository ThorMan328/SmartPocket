import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo5ProductosFinancieros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                titulo('Productos financieros'),
                SizedBox(height: 10,),
                richText('Productos financieros de ahorro: ', 'Son productos financieros enfocados a acumular dinero ahorrado mes a mes. A cambio se recibe un beneficio en forma de intereses.', context),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_5_finanzas_page_images/3.png'),
                SizedBox(height: 10,),
                texto('Básicamente se pueden encontrar dos tipos de productos financieros de ahorro: '),
                SizedBox(height: 10,),
                subtitulo('Cuentas de ahorro'),
                SizedBox(height: 10,),
                richText('', 'Se puede disponer del dinero en cualquier momento.', context),
                richText('', 'Es un ahorro a corto plazo', context),
                SizedBox(height: 10,),
                subtitulo('Depósitos a plazo fijo'),
                SizedBox(height: 10,),
                richText('', 'Se debe pagar una comisión para acceder al dinero antes de la finalización del mismo.', context),
                richText('', 'Es un ahorro a medio-largo plazo.', context),
                SizedBox(height: 10,),
                titulo('Productos financieros de inversión'),
                SizedBox(height: 10,),
                texto('Son los mejores para ganar poder adquisitivo, se obtiene una rentabilidad superior a la inflación.'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_5_finanzas_page_images/4.png'),
                SizedBox(height: 10,),
                texto('Como parte negativa, se puede perder parte del capital invertido, algo mucho más difícil que ocurra en los productos de ahorro, donde el riesgo es muy bajo.'),
                SizedBox(height: 5,),
                texto('De estos productos hay muchos tipos aunque básicamente se pueden encontrar 3: '),
                SizedBox(height: 5,),
                richText('Brokers: ', 'Permiten invertir en bolsa a través de la compra de acciones de las empresas.', context),
                SizedBox(height: 5,),
                richText('Fondos de inversión: ', 'Es un tipo de producto más sencillo para el pequeño ahorrador. Solo tiene que elegir el tipo de activos donde invierte el fondo.', context),
                SizedBox(height: 5,),
                richText('Planes de pensiones', 'Es un producto financiero enfocado exclusivamente a la jubilación, con importantes deducciones fiscales.', context),
                SizedBox(height: 10,),
                titulo('Productos financieros de financiación'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_5_finanzas_page_images/5.png'),
                SizedBox(height: 10,),
                texto('El principal objetivo es aportar un dinero extra en caso de que se necesite.'),
                texto('Se pueden distinguir 3 tipos de productos financieros de financiación: '),
                SizedBox(height: 10,),
                richText('Hipotecas: ', 'Es un producto financiero enfocado exclusivamente a la compra de vivienda.', context),
                SizedBox(height: 5,),
                richText('Créditos: ', 'Es el producto financiero básico de financiación. Se pueden encontrar muchos tipos de diferentes según sea la finalidad del dinero solicitado. Así podemos encontrar créditos para comprar un coche, para un viaje, para realizar unos estudios, etc.', context),
                SizedBox(height: 5,),
                richText('Tarjetas de crédito: ', 'Este tipo de producto financiero permite acceder al dinero sin trámites, simplemente usando la tarjeta de crédito.Este es su principal beneficio, la inmediatez con la que se puede tener el dinero, sin embargo esto se equilibra con los altos tipos de interés que una tarjeta de crédito tiene.', context),
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
            ),
          )
        ],
      ),
    );
  }
}