import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_pocket/src/widgets/cuerpo_texto.dart';

class Modulo5Intereses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                titulo('Interés'),
                SizedBox(height: 10,),
                texto('Es un indicador que se expresa en forma de porcentaje y se usa para estimar el costo de un crédito o la rentabilidad de los ahorros o inversión. La tasa de interés establece un balance entre el riesgo y la posible ganancia de la utilización de una suma de dinero en una situación y tiempo determinado.'),
                SizedBox(height: 10,),
                imagen('assets/images/modulo_5_finanzas_page_images/6.png'),
                SizedBox(height: 10,),
                texto('La tasa de interés puede ser de carácter fijo (se mantiene estable mientras dura la inversión o se devuelve el préstamo) o variable (se actualiza, por lo general, de manera mensual, para adaptarse a la inflación, la variación del tipo de cambio y otras variables).'),
                SizedBox(height: 10,),
                titulo('Tipos de tasas de interés'),
                SizedBox(height: 10,),
                subtitulo('Nominal'),
                SizedBox(height: 5,),
                texto('La tasa nominal es la rentabilidad o intereses de un producto financiero mes a mes o en un lapso determinado teniendo en cuenta sólo el capital inicial; es decir, calcula el interés simple.'),
                SizedBox(height: 10,),
                subtitulo('Efectiva'),
                SizedBox(height: 5,),
                texto('La tasa efectiva por su parte tiene en cuenta la reinversión de los intereses o rendimiento generados; en otras palabras, calcula el interés compuesto.'),
                texto('Las entidades financieras colombianas usan el interés compuesto para sus operaciones, por lo que esta tasa representa lo que finalmente pagará si se pide un préstamo o lo que le pagarán si ahorra o invierte. '), 
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(FontAwesomeIcons.arrowLeft)
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}